#!/bin/bash

HTTP_PORT=9933
WS_PORT=9944

config_ports() {
    echo "Setting up ports for device $1";
    adb -s "$1" reverse tcp:$HTTP_PORT tcp:$HTTP_PORT || echo "Failed to hook HTTP Port: $HTTP_PORT";
    adb -s "$1" reverse tcp:$WS_PORT tcp:$WS_PORT || echo "Failed to hook WS Port: $WS_PORT";
    echo "Done with device $1";
}

for device in $(adb devices -l | awk 'NR>1 {print $1}'); do
    config_ports "$device"
done
