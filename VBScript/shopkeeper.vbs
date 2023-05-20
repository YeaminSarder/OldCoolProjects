'option  explicit
dim rate,LREF,desplay,a,strnames,p2,REF,arrname(9,10),ints
'****SHOP****
price=1


'call addshop(inputbox("shopname"))
call addshop("cloths")
call addshop("cloth")
call addshop("clothhh")



					'Going to the forever loop

do
desplay2=""				'setting the desplay
d=split(desplay,":")
for i = 0 to ubound(d)-1		'adding product space to the desplay
desplay2=desplay2&d(i)&arrname(i+1,5)
next

 
LREF=GetTime()				'getting time for the product function
					'desplaying
box=inputbox(space(50)&"TOTAL:"&total&vbcr&desplay2,"GREED OF MONEY")




for i = 1 to ints			'setting shop detail desplay
If strcomp(box,i)=0 then
box2=inputbox(space(18)&ucase(arrname(i,1))&" (level "&arrname(i,10)&")"&vbcr&"  "&string(50,"-")&"|"&vbcr&fixsps("shopname",18)&"_"&arrname(i,1)&vbcr&fixsps("production amount",20)&arrname(i,2)&vbcr&fixsps("production rate",20)&arrname(i,3)&vbcr&"  "&string(50,"-")&"|"&vbcr&"u. |UPGRADE @ "&arrname(i,6)&" tk."&vbcr&"t. |DECREASE TIME @ "&arrname(i,6)*2&" |",ucase(arrname(i,1)))
iF box2="n" then 			'its the upgread button
arrname(i,2)=arrname(i,2)+arrname(i,8)
IF total>arrname(i,6) then
total=total-arrname(i,6)
 end if
 end if
if strcomp(box,i&i)=0 then		'coin collection method
total=total+arrname(i,5)
arrname(i,5)=0
'arrname(i,5)=produce(i)
box="r"
end if
next
 

if box="q" then 			'exit method
exit do
end if 

if box="r" then				'refresh method 

for i = 1 to ints
arrname(i,5)=produce(i)

next

end if 

loop


					'fix spaces function 
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