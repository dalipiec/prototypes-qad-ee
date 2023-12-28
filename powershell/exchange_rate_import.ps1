# Exchange rate import from www.nbp.pl to QAD Standard Edition
#
# autor: dlp

$waluty = 'EUR', 'GBP', 'USD'
$logfile = "c:\c\logfile.log"

Add-Content -Path $logfile -Value "[$([DateTime]::Now)]   Script Start"
$feed=[xml](new-object system.net.webclient).downloadstring("http://www.nbp.pl/kursy/xml/lasta.xml")
Add-Content -Path $logfile -Value "[$([DateTime]::Now)]   Start of downloading"

#logowanie do QAD
write-output "";
write-output "mcexrmt.p";

$date = (Get-Date).ToString('yyyy-MM-dd')       # nalezy wybrac format odpowiedni do konta logowania do QAD
$date = (Get-Date).ToString('dd\/MM\/yy')       #

$names=$feed.SelectNodes("/tabela_kursow/pozycja")

foreach($node in $names)
{
   if ($waluty -match $node.kod_waluty){
    $currency = [string]$node.kod_waluty;
    write-output $currency;
    write-output "PLN";
    write-output $date;
    write-output $date;
    write-output ("1 " + $node.kurs_sredni.replace(',','.'));           # 'replace' moze byc niepotrzebny
    write-output ".";
    Add-Content -Path $logfile -Value "[$([DateTime]::Now)]   Start of parsing for: [$currency]"
    }
}


# wylogowanie QAD
write-output ".";
write-output ".";
write-output "Y";
Add-Content -Path $logfile -Value "[$([DateTime]::Now)]   Script End"
~                                                                     
