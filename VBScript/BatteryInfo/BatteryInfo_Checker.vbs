'objects
Set WMIO = GetObject("winmgmts:\\.\root\cimv2")						'the wmi object
Set FSO = CreateObject("scripting.FilesyStemObject")					'the file system object
Set ShellO=createobject("wscript.shell")						'to run shell commands

Set BatteryC = WMIO.ExecQuery("Select * from Win32_Battery")				'the wmi battery class	
Set TxtF1r = FSO.OpenTextFile("BatteryInfo_Txt.txt",1)	'txt file1 for reading

LECR=TxtF1r.readline									'last estimated charge reamaining
LDate=CDate(TxtF1r.readline)								'last date
For Each Battery in BatteryC
    NECR = Battery.EstimatedChargeRemaining						'now estimated charge reamaining
    NDate = now	
    NBStat= Battery.BatteryStatus							'now battery satatus : 1 when using 2 when charging
    
Next

If NBStat=1 Then
    If (LECR-NECR)<>0 Then
        dRate=FormatNumber((dateDiff("s",LDate,NDate)/60)/(LECR-NECR),2)
        box=msgbox( "Battery Value: " & dRate & " m/%" & vbCrLf &_
                     "Battery Remaining: " & NECR & "%" & vbCrLf &_
                     "Time Remaining to 0%: " & Int(dRate*NECR/60) & "h " & int(dRate*NECR-Int(dRate*NECR/60)*60) & "m" & vbCrLf &_
                     "Shutdown at " & Mid(dateAdd("n",dRate*(NECR),NDate),11,5),vbAbortRetryIgnore+64,"BatteryInfo By AI Yeamin")
	If box=vbRetry Then
            ShellO.run("BatteryInfo_Checker.vbs")
        End If
        If box=vbAbort Then
            ShellO.run("BatteryInfo_Writter.vbs")
        End If

    Else
        box=msgbox( "Battery Value: infinite m/%" & vbCrLf &_
                     "Battery Remaining: " & NECR & "%" & vbCrLf &_
                     "Time Remaining to 0%: infinity" & vbCrLf &_
                     "Shutdown at Infitity",vbAbortRetryIgnore+64,"BatteryInfo By AI Yeamin")
	If box=vbRetry Then
            ShellO.run("BatteryInfo_Checker.vbs")
        End If
        If box=vbAbort Then
            ShellO.run("BatteryInfo_Writter.vbs")
        End If
    End If
ElseIf NBStat=2 Then
    If (LECR-NECR)<>0 Then
        dRate=FormatNumber((dateDiff("s",LDate,NDate)/60)/(NECR-LECR),2)
        box=msgbox( "Charge Value: " & dRate & " m/%" & vbCrLf &_
                     "Battery Remaining: " & NECR & "%(charging)" & vbCrLf &_
                     "Time Remaining to 100%: " & Int(dRate*(100-NECR)/60) & "h " & int(dRate*(100-NECR)-Int(dRate*(100-NECR)/60)*60) & "m" & vbCrLf &_
                     "Full Charge at " & Mid(dateAdd("n",dRate*(100-NECR),NDate),11,5),vbAbortRetryIgnore+64,"BatteryInfo By AI Yeamin")
	If box=vbRetry Then
            ShellO.run("BatteryInfo_Checker.vbs")
        End If
        If box=vbAbort Then
            ShellO.run("BatteryInfo_Writter.vbs")
        End If

    Else
        box=msgbox( "Charge Value: infinite m/%" & vbCrLf &_
                     "Battery Remaining: " & NECR & "%(charging)" & vbCrLf &_
                     "Time Remaining to 100%: infinity" & vbCrLf &_
                     "Full Charge at Infinity",vbAbortRetryIgnore+64,"BatteryInfo By AI Yeamin By AI Yeamin")
	If box=vbRetry Then
            ShellO.run("BatteryInfo_Checker.vbs")
        End If
        If box=vbAbort Then
            ShellO.run("BatteryInfo_Writter.vbs")
        End If

    End If
End If

'wscript.echo "Battery Discharge Rate: " & FormatNumber((LECR-NECR)/(dateDiff("s",LDate,NDate)/3600),2) & "% per hour"