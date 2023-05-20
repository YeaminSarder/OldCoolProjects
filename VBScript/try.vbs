strComputer = "."
outp = 0
Set objWMIService = GetObject("winmgmts:" _
    & "\\" & strComputer & "\root\cimv2")

Set FSO=createObject("scripting.FileSystemObject")
Set ShellO=createObject("wscript.shell")
Set OFile=FSO.OpenTextFile("try.txt",2)
Set arrObj = objWMIService.ExecQuery("Select * from Win32_PortConnector")

 For Each Obj in arrObj 
    outp=Obj.Caption & "----" & Obj.ExternalReferenceDesignator
   OFile.WriteLine(outp)
 Next
'Wscript.Echo outp
' Wscript.Echo colRunningServices(1).DisplayName  & VbTab & colRunningServices(1).State

ShellO.run("try.txt")