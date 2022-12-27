#!/bin/bash

if [ $# -gt 2 ] || [ $# -eq 0 ]
then
  echo "Usage: $0 {all|up|clean} appname"
  exit 1
fi

OPT=${1}
APPNAME=${2}

cd mros2-wasm

if [ $? -eq 0 ]
then
	echo "enter and build mros2-wasm"
	bash build.bash ${OPT} ${APPNAME}
	cd ..
	echo "exit mros2-wasm"
else
	echo "cannot enter mros2-wasm"
	exit 1
fi
