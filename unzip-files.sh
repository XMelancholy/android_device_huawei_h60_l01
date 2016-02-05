#/bin/sh

VENDOR=huawei
DEVICE=h60_l01

#UPDATE_PACKAGE=~/huawei/EMUI_3.0_H60_L01.zip
UPDATE_PACKAGE=~/下载/cm-11-20150822-UNOFFICIAL-h60_l04.zip

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
  DIR=`dirname $FILE`
  if [ ! -d $BASE/$DIR ]; then
    mkdir -p $BASE/$DIR
  fi
  unzip -p ${UPDATE_PACKAGE} system/$FILE > $BASE/$FILE
done

./setup-makefiles.sh
