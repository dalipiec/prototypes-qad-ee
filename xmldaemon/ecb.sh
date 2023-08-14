#!/bin/bash
# Import last exchange rates from ECB (http://www.ecb.int/stats/eurofxref/eurofxref-daily.xml) for selected currencies
# by dlp 10.06.2020
#
# Please comment out mail message if not used
#
cd /home/mfg
rm -f eurofxref-daily.xml
rm -f kursy*.xml

wget http://www.ecb.int/stats/eurofxref/eurofxref-daily.xml

if [ $? -ne 0 ]; then
        echo -e "$@" |mailx -s "$FatalSubject" "$FatalRecipient"
        exit 1
fi

for wal in USD
do

  kurs=`echo "cat //*[@currency='$wal']/@rate" |xmllint --shell eurofxref-daily.xml | awk -F'[="]' '!/>/{print $(NF-1)}'`
  data=`date "+%F"`

  sed    "s/ZZZZ/$wal/" template.xml > kurs${wal}.xml
  sed -i "s/XXXX/$data/"               kurs${wal}.xml
  sed -i "s/YYYY/$kurs/"               kurs${wal}.xml
done
#  cp kurs*.xml /apps/qad/qdt/envs/mfg1/daemons/XMLDAEMON
#  cp kurs*.xml /apps/qad/qdt/envs/mfg2/daemons/XMLDAEMON
#  cp kurs*.xml /apps/qad/qdt/envs/mfg3/daemons/XMLDAEMON

cp kurs*.xml /tmp

exit 0
