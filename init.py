#!/usr/bin/env python3

import os
import sys
import argparse
import subprocess

import requests

# Script Configuration.
github_user = "shekohex"
github_repo = "subsocial-flutter"
package_name = 'subsocial_sdk'
lib_name = 'subsocial'

# Script arguments.
parser = argparse.ArgumentParser('SubsoicalDownloader')
parser.add_argument("-d", "--dev", action="store_true",
                    help="use a prerelease build instead of stable one")
args = parser.parse_args()
is_prerelease = args.dev
base_url = f'https://api.github.com/repos/{github_user}/{github_repo}/releases'
base_dir = os.path.join(os.getcwd(), 'packages', package_name) \
    if len(sys.argv) < 2 else os.path.normpath(sys.argv[1])
android_base = os.path.join(base_dir, 'android', 'src', 'main', 'jniLibs')
ios_base = os.path.join(base_dir, 'ios')
target_files: list = [
    (
        f'lib{lib_name}-aarch64-linux-android.so',
        os.path.join(android_base, 'arm64-v8a'),
        f'lib{lib_name}.so',
        'arm64 Devices (release build) for real android devices',
    ),
    (
        f'lib{lib_name}-x86_64-linux-android.so',
        os.path.join(android_base, 'x86_64'),
        f'lib{lib_name}.so',
        'x86_64 Devices (release build) for emulator during development',
    ),
    (
        f'lib{lib_name}-universal-apple-ios.a',
        ios_base,
        f'lib{lib_name}.a',
        'Universal Apple IOS (release build) for both real and simulated devices',
    ),
    (
        f'bindings.h',
        os.path.join(ios_base, 'Classes'),
        'bindings.h',
        'C Header file bindings between Rust and Dart',
    ),
]

# Helper functions


def download(url: str, dest: str, filename: str):
    if not os.path.exists(dest):
        os.makedirs(dest, exist_ok=True)  # create folder if it does not exist

    file_path = os.path.join(dest, filename)

    r = requests.get(url, stream=True, allow_redirects=True)
    if r.ok:
        with open(file_path, 'wb') as f:
            for chunk in r.iter_content(chunk_size=1024 * 8):
                if chunk:
                    f.write(chunk)
                    f.flush()
                    os.fsync(f.fileno())
    else:  # HTTP status code 4XX/5XX
        print(f'Download failed: status code {r.status_code}\n{r.text}')
        print(f'failed to download {url}')
        print('Please rerun the script to try again.\n')


def get_releases():
    print('Fetching releases..')
    r = requests.get(base_url)
    if r.ok:
        body = r.json()
        # get the first release from all the releases
        # also, check if we need the prerelease ones
        # otherwise, return none.
        filtered = filter(lambda v: v['prerelease'] == is_prerelease, body)
        release = next(filtered, None)
        if release is None:
            raise Exception("no release matching your preferences")
        release_name = release['name']
        print(f'Latest releases: {release_name}')
        # now we get a list of all assets
        release_assets = release['assets']
        # but we need it to be a dict of asset_name => asset
        # instead of a list of all assets.
        assets = {release_assets[i]['name']: release_assets[i]
                  for i in range(0, len(release_assets))}
        # now we are almost ready to download them
        for (name, dest, filename, msg) in target_files:
            url = assets[name]['browser_download_url']
            print(f'Starting to download {filename} [{msg}]')
            print(f'Destination: {dest}')
            download(url, dest, filename)
        # Nice!
    else:  # HTTP status code 4XX/5XX
        print(f'Whoops: status code {r.status_code}\n{r.text}')
        print('Please rerun the script to try again.\n')


# Init script code.

get_releases()
print(f'Starting downloading Native libraries for {package_name} ..')
print('Please wait this could take some time, depending on your internet connection.')
print()
print('Finished downloading files.')
print()
subprocess.call(['flutter', 'pub', 'get'])
print('Done.')
