#!/bin/bash

SCRIPT=`dirname $0`
DTB=dtb
DTBO=dtbo.img

rm -f $DTB
rm -f $DTBO

if [ "`find $SCRIPT/dts/*/ -name *.dtb`" ]; then
  cat $SCRIPT/dts/*/*.dtb > $SCRIPT/$DTB
  echo "dtb created."
else
  echo "dtb NOT created!"
fi

if [ "`find $SCRIPT/dts/*/ -name *.dtbo`" ]; then
  $SCRIPT/mkdtboimg.py create $SCRIPT/$DTBO $SCRIPT/dts/*/*.dtbo
  echo "dtbo.img created."
else
  echo "dtbo.img NOT created!"
fi
