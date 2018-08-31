#!/bin/bash
################################################################################
##  File:  containercache.sh
##  Team:  CI-Platform
##  Desc:  Prepulls Docker images used in build tasks and templates
################################################################################

source $HELPER_SCRIPTS/apt.sh
source $HELPER_SCRIPTS/document.sh

# Check prereqs
echo "Checking prereqs for image pulls"
if ! command -v docker; then
    echo "Docker is not installed, cant pull images"
    exit 1
fi

# Information output
systemctl status docker --no-pager

# Pull images
for image in jekyll/builder; do
    docker pull $image
done

## Add container information to the metadata file
echo ""
DocumentInstalledItem "Cached container images"

while read -r line; do
    DocumentInstalledItemIndent "$line"
done <<< "$(docker images | tail -n +2 | cut -d' ' -f 1)"
