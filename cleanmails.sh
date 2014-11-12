#!/bin/sh

BASEPATH="/home/kit/users/dennis"
TIME=`date +%H`
WEEKDAY=`date +%u`


#Spam aufräumen
find "${BASEPATH}/.Junk/cur/" -type f -exec mv {} "${BASEPATH}/.Spam/cur/" \;
find "${BASEPATH}/.Spam/cur/" -mtime +60 -delete

#Archiv aufräumen
find "${BASEPATH}/._Wiedervorlage.9_Archiv/cur" -mtime +60 -delete


#Wiedervorlage
#Test 1 Minute
#find "${BASEPATH}/._Wiedervorlage.1_1h/cur/" -type f -cmin +1 -exec "~/bin/mvmails.sh" {} \;

#abend
if [ $TIME -ge 17 ] && [ $TIME -le 23 ]; then
  find "${BASEPATH}/._Wiedervorlage.0_abends/cur/" -type f -cmin +1 -exec "~/bin/mvmails.sh" {} \;
fi

#Wochenende
if [ $TIME -ge 17 ] && [ $TIME -le 23 ] && [ $WEEKDAY -ge 5 ]; then
  find "${BASEPATH}/._Wiedervorlage.0_Wochenende/cur/" -type f -cmin +1 -exec "~/bin/mvmails.sh" {} \;
fi

#1 Stunde
find "${BASEPATH}/._Wiedervorlage.1_1h/cur/" -type f -cmin +60 -exec "~/bin/mvmails.sh" {} \;

#6 Stunden
find "${BASEPATH}/._Wiedervorlage.1_6h/cur/" -type f -cmin +360 -exec "~/bin/mvmails.sh" {} \;

#12 Stunden
find "${BASEPATH}/._Wiedervorlage.1_12h/cur/" -type f -cmin +720 -exec "~/bin/mvmails.sh" {} \;

#1 Tag
find "${BASEPATH}/._Wiedervorlage.2_1d/cur/" -type f -cmin +1440 -exec "~/bin/mvmails.sh" {} \;

#2 Tage
find "${BASEPATH}/._Wiedervorlage.2_2d/cur/" -type f -ctime +1 -exec "~/bin/mvmails.sh" {} \;

#3 Tage
find "${BASEPATH}/._Wiedervorlage.2_3d/cur/" -type f -ctime +2 -exec "~/bin/mvmails.sh" {} \;

#1 Woche
find "${BASEPATH}/._Wiedervorlage.3_1w/cur/" -type f -ctime +6 -exec "~/bin/mvmails.sh" {} \;

#2 Wochen
find "${BASEPATH}/._Wiedervorlage.3_2w/cur/" -type f -ctime +13 -exec "~/bin/mvmails.sh" {} \;

#1 Monat
find "${BASEPATH}/._Wiedervorlage.4_1m/cur/" -type f -ctime +29 -exec "~/bin/mvmails.sh" {} \;
