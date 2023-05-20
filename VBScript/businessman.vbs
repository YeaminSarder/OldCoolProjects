dim rate,LREF,desplay,a,strnames,p2,REF,arrname(9,10),ints
'****SHOP****
price=10
total=10000
call addshop("food shop")
'LOADING 

set objfso = createobject("scripting.filesystemobject")
set objtxt = objfso.opentextfile("C:\Users\khan\Documents\businessman.txt",1)

do until objtxt.atendofstream
total=objtxt.readline

shopnumbers=objtxt.readline
for i = 1 to shopnumbers
call addshop(objtxt.readline)
next
for i = 1 to ints
arrname(i,2)=objtxt.readline
arrname(i,3)=objtxt.readline
arrname(i,5)=objtxt.readline
arrname(i,6)=objtxt.readline
arrname(i,10)=objtxt.readline
loop




					'Going to the forever loop
do
desplay2=""				'setting the desplay
d=split(desplay,":")
for i = 0 to ubound(d)-1		'adding product space to the desplay
desplay2=desplay2&d(i)&"(level: "&arrname(i+1,10)&") "&arrname(i+1,5)
next

 
LREF=GetTime()				'getting time for the product function
					'desplaying
box=inputbox(space(50)&"TOTAL:"&total&vbcr&desplay2&vbcr&vbcr&"                a. | ADD MORE SHOP |   @ "&arrname(ints,7)*10&vbcr&"    h. | HELP |"&space (40)&"q. | QUIT |","GREED OF MONEY")

if box="a" then 			'adding new shop method
	if total>=arrname(ints,7)*10 then
	total=total-arrname(ints,7)*10
	call addshop(inputbox("Give a name to your new shop","ADD SHOP"))
	shopnumbers=shopnumbers+1
	end if
end if
if box="q" then 			'exit method
call save()
exit do
end if 
for i=1 to ints
if strcomp(box,i&i)=0 then		'coin collection method
total=total+arrname(i,5)
arrname(i,5)=0
'arrname(i,5)=produce(i)
box="r"
end if
If strcomp(box,i)=0 then
	box2=inputbox(space(18)&ucase(arrname(i,1))&" (level "&arrname(i,10)&")"&vbcr&"  "&string(50,"-")&"|"&vbcr&fixsps("shopname",18)&"_"&arrname(i,1)&vbcr&fixsps("production amount",20)&arrname(i,2)&vbcr&fixsps("production rate",20)&arrname(i,3)&vbcr&"  "&string(50,"-")&"|"&vbcr&"u. |UPGRADE @ "&arrname(i,6)&" tk. |"&vbcr&"t.  |DECREASE TIME @ "&arrname(i,6)*2&" tk. |",ucase(arrname(i,1)))
	iF box2="u" then 			'its the upgread button
		IF total>arrname(i,6) then
			arrname(i,2)=arrname(i,2)+arrname(i,8)
			total=total-arrname(i,6)
			arrname(i,10)=arrname(i,10)+1
			arrname(i,6)=arrname(i,2)^2
		end if
	end if
	if box2="t" then
		if not arrname(i,3)=1 and total>arrname(i,6)*2 then
			total=total-arrname(i,6)*2
			arrname(i,10)=arrname(i,10)+2
			arrname(i,6)=(arrname(i,2)+arrname(i,8))^2
			arrname(i,3)=arrname(i,3)-1
		end if	
	end if
end if
next
if box="r" then				'refresh method 

for i = 1 to ints
arrname(i,5)=produce(i)

next

end if 
loop






function fixsps(strstring,intn)
fixsps=replace(Ucase(strstring)&space(intn-len(strstring))," ","_.")
end function 

					'add shop function 
function addshop(strnames)

ints=ints+1
rate=rate+1
amount=(rate^2)*10
UpgradeCost =amount^2
price=price*10	
UpgradeRate=amount

arrname(ints,1)=strnames
arrname(ints,2)=amount
arrname(ints,3)=rate
arrname(ints,6)=UpgradeCost
arrname(ints,7)=price
arrname(ints,8)=UpgradeRate
arrname(ints,9)=1
arrname(ints,10)=1  'shoplevel
a=a+1
desplay=desplay&a&"."&arrname(ints,1)&" "&":"&vbcr

end function



					'produce coins according to time spent 
function produce(intx)

amount2=arrname(intx,2)
rate2=arrname(intx,3)
REF=GetTime()
diff=REF-LREF+arrname(intx,4)

do until diff<rate2
diff=diff-rate2
pro=pro+amount2
loop

arrname(intx,5)=pro+arrname(intx,5)
produce=arrname(intx,5)
arrname(intx,4)=diff
end function 

					'getting time
function GetTime()
t=split(time,":")
h=t(0)
m=t(1)
s=mid(t(2),1,2)
GetTime=h*3600+m*60+s
end function 

sub save()
'dim arrname(9,10)
set objfso = createobject("scripting.filesystemobject")
set objtxt = objfso.opentextfile("C:\Users\khan\Documents\businessman.txt",2)
objtxt.writeline total
objtxt.writeline shopnumbers
for i = 2 to ints
objtxt.writeline arrname(i,1)
next
for i = 2 to ints
objtxt.writeline arrname(i,2)
objtxt.writeline arrname(i,3)
objtxt.writeline arrname(i,5)
objtxt.writeline arrname(i,6)
objtxt.writeline arrname(i,10)
next
end sub 
