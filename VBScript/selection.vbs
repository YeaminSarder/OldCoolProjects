set TSel=createObject("SAPI.SpTextSelectionInformation")

For i = 0 to 10
wscript.sleep 1000


if TSel.SelectionLength<>0 then

wscript.Echo TSel.SelectionLength
end if


Next

