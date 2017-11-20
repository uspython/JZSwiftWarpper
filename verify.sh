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
pod spec lint ${WORKSPACE_NAME}.podspec --sources='git@github.com:uspython/Specs.git,https://github.com/CocoaPods/Specs' --allow-warnings