#!/bin/sh

#Spam aufräumen
find /home/kit/users/dennis/.Spam/cur/ -mtime +60 -delete

#Archiv aufräumen
find /home/kit/users/dennis/._Wiedervorlage.9_Archiv/cur -mtime +60 -delete



#Wiedervorlage

#1 Stunde
find /home/kit/users/dennis/._Wiedervorlage.1_1h/cur/ -type f -cmin +60 -exec ~/bin/mvmails.sh {} \;

#6 Stunden
find /home/kit/users/dennis/._Wiedervorlage.1_6h/cur/ -type f -cmin +360 -exec ~/bin/mvmails.sh {} \;

#12 Stunden
find /home/kit/users/dennis/._Wiedervorlage.1_12h/cur/ -type f -cmin +720 -exec ~/bin/mvmails.sh {} \;

#1 Tag
find /home/kit/users/dennis/._Wiedervorlage.2_1d/cur/ -type f -cmin +1440 -exec ~/bin/mvmails.sh {} \;

#2 Tage
find /home/kit/users/dennis/._Wiedervorlage.2_2d/cur/ -type f -ctime +1 -exec ~/bin/mvmails.sh {} \;

#3 Tage
find /home/kit/users/dennis/._Wiedervorlage.2_3d/cur/ -type f -ctime +2 -exec ~/bin/mvmails.sh {} \;

#1 Woche
find /home/kit/users/dennis/._Wiedervorlage.3_1w/cur/ -type f -ctime +6 -exec ~/bin/mvmails.sh {} \;

#2 Wochen
find /home/kit/users/dennis/._Wiedervorlage.3_2w/cur/ -type f -ctime +13 -exec ~/bin/mvmails.sh {} \;

#1 Monat
find /home/kit/users/dennis/._Wiedervorlage.4_1m/cur/ -type f -ctime +29 -exec ~/bin/mvmails.sh {} \;

