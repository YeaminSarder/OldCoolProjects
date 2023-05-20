$fso= New-Object -ComObject scripting.filesystemobject
remove-item -path C:\Users\Yeamin\Documents\Scripts\Ps1\NoteTime\noteTime.txt
new-item "C:\Users\Yeamin\Documents\Scripts\Ps1\NoteTime\noteTime.txt" -itemtype "file"
#$fileW=$fso.OpenTextFile("C:\Users\Yeamin\Documents\Scripts\Ps1\NoteTime\noteTime.txt",2)