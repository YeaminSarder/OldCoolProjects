do
if mid(time,5,1)=":" then
min=mid(time,3,2)
else
min=mid(time,4,2)
end if

if min=15  or min=30 or min=45 or min=00 then
exit do
end if
wscript.sleep 60000
loop

set objS=CreateObject("sapi.spvoice")
do
objS.speak time
wscript.sleep 900000
loop