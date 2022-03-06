#!/bin/bash
isDebugMode() {
    echo $DEBUG_MODE
}

isDebug=`isDebugMode`
if [ "$isDebug" = 'true' ]; then
    echo -e "\n 🐛 START DEBUGGER\n" && dlv exec ./tmp/main --continue --headless=true --listen=:2345 --api-version=2 --accept-multiclient --log
else
    echo -e "\n 📹 START LIVE RELOADING\n" && air
fi

