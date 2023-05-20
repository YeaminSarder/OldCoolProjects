set objshell=createobject("wscript.shell")
do
randomize
count=0
strR=rnd*10000
digit=mid(strR,1,4)
d1=mid(digit,1,1)
d2=mid(digit,2,1)
d3=mid(digit,3,1)
d4=mid(digit,4,1)
if d1=d2 then
count=count+1
end if
if d1=d3 then 
count=count+1
end if
if d1=d4 then 
count=count+1
end if
if d2=d3 then 
count=count+1
end if
if d2=d4 then 
count=count+1
end if
if d3=d4 then 
count=count+1
end if
if count=0 then
if d1="." or d2="."  or d3="." or d4="." then
else
exit do
end if
end if
loop
do
step=step+1
bulls=0
cows=0
g=inputbox("Type Password.Score Four Bulls To win.","Bulls & Cows",,vbyes)
g1=mid(g,1,1)
g2=mid(g,2,1)
g3=mid(g,3,1)
g4=mid(g,4,1)
if g1=d1 then
bulls=bulls+1
elseif g1=d2 or g1=d3 or g1=d4 then
cows=cows+1
end if
if g2=d2 then
bulls=bulls+1
elseif g2=d1 or g2=d3 or g2=d4 then
cows=cows+1
end if
if g3=d3 then
bulls=bulls+1
elseif g3=d1 or g3=d2 or g3=d4 then
cows=cows+1
end if
if g4=d4 then
bulls=bulls+1
elseif g4=d2 or g4=d3 or g4=d1 then
cows=cows+1
end if

if bulls=4 then
w=msgbox("Congratulations!You Have Found The Password in"&" "&step&" "&"steps",,"Bulls & Cows")
exit do
elseif g="" then
exit do
end if

wscript.echo "step" & step & ":" & " " & bulls & " " & "Bulls" & " " & "&" & " " & cows & " " & "cows"
loop
'wscript.echo "step:"step
x=msgbox("PLAY AGAIN",vbyesno,"Bulls & Cows")
if x=vbyes then
objshell.run("C:\Users\khan\Documents\bull&cows.vbs")
end if