#!/bin/sh
#
# applypatch.sh
# apply patches for huawei h60_l01
#
# Author: XianGxin
# Create: 2016-02-01 05:27


dir=`cd $(dirname $0) && pwd`
top=$dir/../../../..

for patch in `ls $dir/*.patch` ; do
	patch -p1 -N -i $patch -r - -d $top
done

