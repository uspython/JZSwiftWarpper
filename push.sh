#!/bin/sh
#comments
cd $(cd `dirname $0`; pwd)
JSON=`xcodebuild -list -json`
WORKSPACE_NAME=`echo ${JSON} | jq .workspace.name -r`
SCHEME_NAME=${WORKSPACE_NAME}
if [ "$WORKSPACE_NAME" =  "" ]; then
	echo "cannot find workspace file"
	exit 0
fi
pod repo push BTSpecs ${WORKSPACE_NAME}.podspec --allow-warnings