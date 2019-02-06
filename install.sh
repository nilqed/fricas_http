#!/bin/bash

CLSHRD=/usr/share/common-lisp
TARGET=$CLSHRD/source/fricas_http
ASDLNK=$CLSHRD/systems/fricas_http.asd

mkdir -p -v $TARGET
mkdir -p -v $TARGET/src

if [ -d "$TARGET" ]; then
  cp -v ./fricas_http.asd $TARGET/ ;
  cp -v ./README.md $TARGET/ ;
  cp -v ./LICENSE $TARGET/ ;
else
  exit 1 
fi

if [ -d "$TARGET/src" ]; then
  cp -v ./src/server.lisp $TARGET/src/ ;
  cp -v ./src/webspad.lisp  $TARGET/src/ ;
  cp -v ./src/json.lisp $TARGET/src/ ;
  cp -v ./src/eval.lisp $TARGET/src/ ;
else
  exit 2 
fi

if ln -s $TARGET/fricas_http.asd $ASDLNK; then
  echo fricas_httpd successfully installed;
else
  exit 3
fi




