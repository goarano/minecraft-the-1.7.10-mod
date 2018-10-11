#!/bin/sh
set -e
if [ "${EULA_AGREE}" != "true" ]; then
    echo "Please agree to EULA by setting EULA_AGREE=true"
    exit 1
fi

if [ ! -f server.properties ]; then
    echo "No server.properties found, exiting"
    exit 1
fi

if [ ! -f LaunchServer.sh ]; then
    echo "copying server files..."
    rsync -r --ignore-existing /data/* /app
fi

echo "starting server"
java -server -Xmx3G -XX:PermSize=256M -Dfml.queryResult=confirm -jar forge-*.jar nogui

