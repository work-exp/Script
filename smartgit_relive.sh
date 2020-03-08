#!/bin/bash
## Smartgit 目前判斷註冊資訊式寫在 settings.xml, 將settings.xml 刪除後將可再獲得30 天的試用,所以寫個script 資動刪除該檔案.
## 可用以下指令建立排程
##
TAGERT_FILE="settings.xml"
SMARTGIT_PATH="${HOME}/.config/smartgit"

#VERSION_REGEX="^[0-9]+$"
#LATEST_VERSION=`ls ${SMARTGIT_PATH} | grep -P ${VERSION_REGEX} | sort -n -r -k 1 | head -1`

LATEST_VERSION=`ls ${SMARTGIT_PATH} |  sort -n -r -k 1 | head -1`
TAGERT_FILEPATH="${SMARTGIT_PATH}/${LATEST_VERSION}/${TAGERT_FILE}"

if [ -f ${TAGERT_FILEPATH} ]; then
   echo ${TAGERT_FILEPATH} "exists"
   rm ${TAGERT_FILEPATH}
else
   echo ${TAGERT_FILEPATH} "does not exists."
   echo "Run fail"
fi

