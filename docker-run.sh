#!/bin/bash

ENTRY_POINT=""
IMAGE_NAME=""

if [ $1 = "--dev" ]; then
 ENTRY_POINT="-v $PWD/src/:/app -it --entrypoint \"/bin/sh\""
 IMAGE_NAME=$2
else
 IMAGE_NAME=$1
fi

CMD="docker run ${ENTRY_POINT} ${IMAGE_NAME}"

eval $CMD

