#!/bin/sh

logfile="/home/kit/bin/logs/mvmails.log"

echo `date` --- >> $logfile

if [ "$1" == "" ]; then
  echo var1 ist nicht gesetzt
else
  echo `date` - input filename: $1 >> $logfile
  echo `date` - cutted filename: ${1%:*} >> $logfile
  subject=""
  subject=`grep "^Subject:" $1`
  echo `date` - $subject >> $logfile
  cp $1 /home/kit/users/dennis/._Wiedervorlage.9_Archiv/cur/`date +%s%N`:2,S
  mv -f $1 ${1%:*}
  mv -f ${1%:*} /home/kit/users/dennis/new/
fi

