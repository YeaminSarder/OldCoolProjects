inp="what to read, sir?"
do

set voice = createobject ("sapi.spvoice")
voice.speak inp
inp=inputbox("What to read, sir?","Computer:",inp,vbyesno)
if inp="" then
exit do
end if
loop