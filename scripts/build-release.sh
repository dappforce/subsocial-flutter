#!/bin/env sh

set -e
cd ./example
echo 'Building APK for release (arm64)...'
flutter build apk --release \
    --target-platform android-arm64 \
    --dart-define=protobuf.omit_message_names=true
cd ..
