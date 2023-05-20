
function createElement(tg,tag,text,id,Class) {
var nE = document.createElement(tag);
nE.appendChild(document.createTextNode(text));
var e = tg.appendChild(nE);
e.id = id;
e.setAttribute('class',Class);
return e;
}


function addCtrl () {


var iiii= document.body.appendChild(document.createElement('textarea'));
document.body.appendChild(document.createElement('button')).onclick=doo;;

function doo() {
eval(iiii.value)
}
}
