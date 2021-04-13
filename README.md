# Subsocial Flutter SDK

## Usage

in pubspec.yml add:

```yml
subsocial_sdk:
    git: https://github.com/dappforce/subsocial-flutter.git
```

## Development, Setup and Tools
* Cargo Plugins

```sh
cargo install cargo-make
```

* Install LLVM (10+) in the following way:

#### ubuntu/linux
1. Install libclangdev - `sudo apt-get install libclang-dev`.

#### Windows
1. Install Visual Studio with C++ development support.
2. Install [LLVM](https://releases.llvm.org/download.html) or `winget install -e --id LLVM.LLVM`.


#### MacOS
1. Install Xcode.
2. Install LLVM - `brew install llvm`.


i
## Build and Test

In the Root of the project simply run:

```sh
cargo make
```

Then run flutter app normally

```
flutter run
```

## See also

- [Dart Meets Rust: a match made in heaven ✨](https://dev.to/sunshine-chain/dart-meets-rust-a-match-made-in-heaven-9f5)
- [Dart and Rust: the async story 🔃](https://dev.to/sunshine-chain/rust-and-dart-the-async-story-3adk)
- https://github.com/shekohex/flutterust
