# Shell script to import exchange rate from ECB bank into QAD EE
Simple bash shell script (.sh) and template XML file, to import single currency exchange rate from ECB bank
into QAD ERP via XMLDaemon import functionality.

## Files:
ecb.sh - bash shell script (adjust it to your needs)

template.xml - template .xml file used by XML Daemon import (adjust it to your needs)

### Prerequisites:
xmllint tool installed (for parsing response from bank's SOAP API call)
