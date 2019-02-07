#!/bin/bash

# PATHS
CLSHRD=/usr/share/common-lisp
TARGET=$CLSHRD/source/fricas_http
ASDLNK=$CLSHRD/systems/fricas_http.asd

echo Uninstalling fricas_http [confirm]
if rm -r -i $TARGET; then 
  if [ -d "$TARGET" ]; then
    echo $TARGET NOT removed;
    exit 1
  fi
else
  echo Retry with sudo;
  exit 1
fi

if rm -i $ASDLNK; then
  if [ -e "$ASDLNK" ]; then
    echo $ASDLNK NOT removed;
    exit 1
  fi
else
  echo Retry with sudo;
  exit 1
fi

echo ++++ fricas_http completely removed.

