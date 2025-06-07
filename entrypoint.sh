#!/usr/bin/env bash

if [ ! -f "/opt/manageengine/ServiceDesk/bin/run.sh" ]; then
    chmod +x /opt/manageengine/ManageEngine_ServiceDesk_Plus.bin
    /opt/manageengine/ManageEngine_ServiceDesk_Plus.bin -f /opt/manageengine/installer.properties.sh
fi

cd /opt/manageengine/ServiceDesk/bin || exit 1

exec /opt/manageengine/ServiceDesk/bin/run.sh
