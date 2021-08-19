#!/usr/bin/env python3

import os
import sys
import subprocess

import requests

# Script Configuration.
github_user = "shekohex"
github_repo = "subsocial-flutter"
package_name = 'subsocial_sdk'
lib_name = 'subsocial'

# Script arguments.

base_url = f'https://github.com/{github_user}/{github_repo}/releases/latest/download'
base_dir = os.path.join(os.getcwd(), 'packages', package_name) \
    if len(sys.argv) < 2 else os.path.normpath(sys.argv[1])
android_base = os.path.join(base_dir, 'android', 'src', 'main', 'jniLibs')
ios_base = os.path.join(base_dir, 'ios')
target_files: list = [
    (
        f'{base_url}/lib{lib_name}-aarch64-linux-android.so',
        os.path.join(android_base, 'arm64-v8a'),
        f'lib{lib_name}.so',
        'arm64 Devices (release build) for real android devices',
    ),
    (
        f'{base_url}/lib{lib_name}-x86_64-linux-android.so',
        os.path.join(android_base, 'x86_64'),
        f'lib{lib_name}.so',
        'x86_64 Devices (release build) for emulator during development',
    ),
    (
        f'{base_url}/lib{lib_name}-universal-apple-ios.a',
        ios_base,
        f'lib{lib_name}.a',
        'Universal Apple IOS (release build) for both real and simulated devices',
    ),
    (
        f'{base_url}/bindings.h',
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

# Init script code.


print(f'Starting downloading Native libraries for {package_name} ..')
print('Please wait this could take some time, depending on your internet connection.')
print()

for (url, dest, filename, msg) in target_files:
    print(f'Starting to download {filename} [{msg}]\nDestination: {dest}')
    download(url, dest, filename)

print('Finished downloading files.')
print()
subprocess.call(['flutter', 'pub', 'get'])
print('Done.')
