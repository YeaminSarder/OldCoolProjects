$str = 'yea min'
$z = 200
$str2=$str
for ($i=0;$i -lt $z;$i++) {

if ($i%2 -eq 0) {
if ($str -lt 200){
$str+' cc'
}
$str
}else{
$str2 = smleft($str2)
$str2
}

sleep -Milliseconds 10
}

function smLeft () {

return ($args[0]).remove(0,1)+($args[0])[0]

}
