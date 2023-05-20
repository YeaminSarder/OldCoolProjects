'objects
Set WMIO = GetObject("winmgmts:\\.\root\cimv2")						'the wmi object
Set FSO = CreateObject("scripting.FilesyStemObject")					'the file system object


Set BatteryC = WMIO.ExecQuery("Select * from Win32_Battery")				'the wmi battery class	
Set TxtF1w = FSO.OpenTextFile("BatteryInfo_Txt.txt",2)	'txt file1 for writting


For Each Battery in BatteryC
    TxtF1w.writeline(Battery.EstimatedChargeRemaining)					'txt file1 contains current battery percentage
    TxtF1w.writeline(Now)								'and time
Next

