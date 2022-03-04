#!/bin/bash
isDebugMode() {
    echo ${!is_debug}
}

isDebug=`isDebugMode`
if [ "$isDebug" = '1' ]; then
    echo -e "\n 🐛 START DEBUGGER\n" && dlv exec ./tmp/main --continue --headless=true --listen=:2345 --api-version=2 --accept-multiclient --log
else
    echo -e "\n 📹 START LIVE RELOADING\n" && air
fi

