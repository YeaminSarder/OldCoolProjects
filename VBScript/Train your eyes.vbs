randomize
function rndabc()
r=formatnumber(rnd*26,0)
if r=0 then
r=1
end if
select case r
case 1
n="A"
case 2
n="B"
case 3
n="C"
case 4
n="D"
case 5
n="E"
case 6
n="F"
case 7
n="G"
case 8
n="H"
case 9
n="I"
case 10
n="J"
case 11
n="K"
case 12
n="L"
case 13
n="M"
case 14
n="N"
case 15
n="O"
case 16
n="P"
case 17
n="Q"
case 18
n="R"
case 19
n="S"
case 20
n="T"
case 21
n="U"
case 22
n="V"
case 23
n="W"
case 24
n="X"
case 25
n="Y"
case 26
n="Z"
end select
rndabc=n
end function 
l=inputbox("select level")
do
desplay =space(l*4+2) & rndabc() &vbcr
for i=1 to l
desplay=desplay&vbcr
next
desplay=desplay&rndabc()&space(l*4)&"X"&space(l*4)&rndabc()&vbcr
for i=1 to l
desplay=desplay&vbcr
next
desplay =desplay&space(l*4+2) & rndabc() &vbcr
box=msgbox (desplay,vbcancel)
select case box
case vbretry
case vbignore 
exit do
case vbabort
l=l+1
end select 
loop
