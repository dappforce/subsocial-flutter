#!/bin/env sh

SRC_DIR=./native/ffi
DST_DIR=./lib/generated

mkdir -p $DST_DIR

echo "Checking for protoc dart plugin..."

dart pub global activate protoc_plugin

echo 'Generating new definitions...'

protoc -I=$SRC_DIR --dart_out=$DST_DIR $SRC_DIR/*.proto

echo 'Generated ...OK'

flutter format $DST_DIR

echo "Done!"
