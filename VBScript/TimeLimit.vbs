inta=inputbox("df")
wscript.echo read( inta ,"C:\Users\khan\Documents\sentence.txt")



function read(inta ,pathp)
counter=0
set objfso=createobject("scripting.filesystemobject")
set objtxt=objfso.opentextfile(pathp,1)
do
objtxt.readline
counter=counter+1
if inta=counter then
read=objtxt.readline
exit do
end if
loop
set objfso=nothing
set objtxt=nothing
end function 