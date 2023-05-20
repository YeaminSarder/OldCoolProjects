dim a(3),b(3),z(3),box
a(1)=" "
b(1)=" "
z(1)="0"
function fbox()
 box = inputbox(_
z(1)&a(1)&a(1)&a(1)&b(1)&b(1)&b(1)&z(1)&a(1)&a(1)&vbcr&a(1)&b(1)&b(1)&b(1)&z(1)&a(1)&a(1)&a(1)&b(1)&b(1)&b(1)&z(1)    &vbcr)
end function 
fbox()
if box="1" then
a(1)=0
else
b(1)=0
end if
fbox()



