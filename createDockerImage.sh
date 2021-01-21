#!/bin/bash
# Copyright (c) 2016, TIBCO Software Inc. All rights reserved.
# You may not use this file except in compliance with the license 
# terms contained in the TIBCO License.md file provided with this file.


if [[ ! $# -eq 1 ]]; then
    echo "Usage: ./createDockerImage.sh <Tag>"
    printf "\t %s \t\t %s \n\t\t\t\t %s \n" "Tag. Eg: bwce:v2.0.0"
    exit 1
fi

if [ -z "$1"  ]; then
	tag="bwce:latest"
	echo "Tag is set to bwce:latest"
else
	tag=$1
fi

docker build -f Dockerfile -t $tag .
