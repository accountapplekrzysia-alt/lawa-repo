#!/bin/bash

NAME=$(jq -r '.name' control/meta.json)
VERSION=$(jq -r '.version' control/meta.json)
ARCH=$(jq -r '.arch' control/meta.json)

OUTPUT="${NAME}_${VERSION}.${ARCH}.lawa"

tar -czf "$OUTPUT" data control

echo "Zbudowano paczkę: $OUTPUT"
