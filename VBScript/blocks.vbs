strx=inputbox("x axis","type")
y=inputbox("y axis","type")
			for i=1 to len(strx)
		if mid(strx,i,1)=1 then
	for j = 1 to 10
d=d & "---   "
	next
d=d&vbcr&"|"
		else
	for k = 1 to 10
d=d & "   ---"
	next
d=d&vbcr
		end if
d=d&vbcr
			next
msgbox (d)