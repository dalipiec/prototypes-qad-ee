#!/bin/bash
# Import last exchange rates from ECB (http://www.ecb.int/stats/eurofxref/eurofxref-daily.xml) for selected currencies
# by dlp 10.06.2020
#
# Please comment out mail message if not used
#
cd /home/mfg
rm -f eurofxref-daily.xml*

# This command will fetch .xml file with exchange rates, transform it and copy the output into XML Daemon input directory (/apps)
wget -q http://www.ecb.int/stats/eurofxref/eurofxref-daily.xml && java -jar ./saxon-he-10.1.jar -xsl:kursyECBv3.xsl -s:eurofxref-daily.xml -o:/apps/eurofxref-daily.xml&
exit 0
