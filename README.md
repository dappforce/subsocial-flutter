# Subsocial Flutter SDK

## Usage

in your flutter project run the following commands to add the SDK to your project as a package.

```shell=
git submodule add https://github.com/dappforce/subsocial-flutter.git packages/subsocial_sdk
```

then run the following command

```shell=
./packages/subsocial_sdk/init.py
```

in your flutter project in `pubspec.yml` just add:

```yaml=
subsocial_sdk:
    path: packages/subsocial_sdk
```

then use the SDK as any other flutter package.

**To Update the SDK**
Simply run:

```bash=
git submodule foreach git pull
```

then rerun the `init.py` script to fetch the latest native libs.

```shell=
./packages/subsocial_sdk/init.py
```

## Development, Setup and, Tools

> Note these instructions only for who are working on the development of the SDK
> not the end-users that will use this SDK in the apps.

* Cargo Plugins

```sh
cargo install cargo-make
```

* Install LLVM (10+) in the following way:

* **ubuntu/linux**

    1. Install libclangdev - `sudo apt-get install libclang-dev`.

* **Windows**

    1. Install Visual Studio with C++ development support.
    2. Install [LLVM](https://releases.llvm.org/download.html)
       or `winget install -e --id LLVM.LLVM`.

* **MacOS**

    1. Install Xcode.
    2. Install LLVM - `brew install llvm`.

## Build and Test

In the Root of the project simply run:

```sh
cargo make native
```

To Run tests:

```sh
flutter test
```

Then run the example flutter app:

* Build the native libs

```sh
cargo make android-dev # or ios
```

* then run the app (the example)

```sh
flutter run
```

## See also

* [Dart Meets Rust: a match made in heaven ✨](https://dev.to/sunshine-chain/dart-meets-rust-a-match-made-in-heaven-9f5)
* [Dart and Rust: the async story 🔃](https://dev.to/sunshine-chain/rust-and-dart-the-async-story-3adk)
* [Flutterust](https://github.com/shekohex/flutterust)

