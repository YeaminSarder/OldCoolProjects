$fso= New-Object -ComObject scripting.filesystemobject
$fileW=$fso.OpenTextFile("C:\Users\Yeamin\Documents\Scripts\Ps1\NoteTime\noteTime.txt",8)
$fileR=$fso.OpenTextFile("C:\Users\Yeamin\Documents\Scripts\Ps1\NoteTime\noteTime.txt",1)

$lines= @()
while ( -not $fileR.AtEndOfStream) {
$lines+= $fileR.ReadLine()
}
$fileR.close()


$date=get-date
if ($lines.length -gt 0) {
$date2=get-date -date $lines[$lines.length-1]
$dt=($date-$date2)

$op= "                           {0}h {1}m {2}s" -f ($dt.Hours+$dt.Days) , $dt.minutes , $dt.seconds
$fileW.WriteLine($op)
}


$fileW.WriteLine($date)
$fileW.close()

#read-host