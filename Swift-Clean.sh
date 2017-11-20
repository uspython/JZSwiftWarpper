#!/bin/sh
#comments

#Swift编码风格检验脚本
path=`dirname "${SRCROOT}"`
if [[ -z ${SKIP_SWIFTCLEAN} || ${SKIP_SWIFTCLEAN} != 1 ]]; then
if [[ -d "${LOCAL_APPS_DIR}/Swift-Clean.app" || -d "${LOCAL_APPS_DIR}/Swift-Clean.app" ]]; then
"${LOCAL_APPS_DIR}"/Swift-Clean.app/Contents/Resources/SwiftClean.app/Contents/MacOS/SwiftClean "${path}/Classes"
else
echo "warning: You have to install and set up Swift-Clean to use its features!"
fi
fi