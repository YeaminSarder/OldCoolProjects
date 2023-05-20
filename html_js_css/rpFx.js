


function objN(oname,name,max,arr,k) {
	if (arr==undefined) {arr= [];}
	if (k==undefined) {k= [];}
	this.oname = oname;
	this.name = name;
	this.max = max;
	this.arr = arr;
	this.k = k;
	//start(this);
}
//alert();

function setObj (key,obj) {
setCookie(key,JSON.stringify(obj),2000000);
}

function getObj (key) {
var obj =  JSON.parse(getCookie(key))
//start(obj);

return (new objN(obj.oname,obj.name,obj.max,obj.arr));
}


//Obj Moulder
function start(obj) {

obj.d1 = createElement(document.body,'div',obj.name,'d1','d') 

obj.inp = createElement(document.body,'input','ihg','in','inp') 

obj.Badd = createElement(document.body,'button','add','b1','btn') 
obj.Bdel = createElement(document.body,'button','del','b2','btn') 
obj.Bclear=createElement(document.body,'button','clear','b3','btn') 
obj.DD=createElement(document.body,'b',obj.arr.length/obj.max*100+'%','d1','dd') 
obj.inp.setAttribute('type','number');
obj.Badd.setAttribute('onclick',"add("+obj.oname+")")
obj.Bdel.setAttribute('onclick',obj.oname+".arr.splice(0,1);update("+obj.oname+")");
obj.Bclear.setAttribute('onclick',obj.oname+".arr=[];update("+obj.oname+")");

//obj.k = [];
update(obj);
//alert (obj.k[0]);
}

function add(obj) {
	var index = obj.arr.indexOf(obj.inp.value)
	if (index>-1) {
		obj.arr.splice(index,1)
	}else{
		obj.arr.splice(0,0,obj.inp.value)
	}
	//obj.k = [];
	update(obj)
	setObj(obj.oname,obj)
}


function update(obj) {
	clearPoints(obj)
	obj.k=[];
	for (var i=0;i<obj.arr.length;i++) {
		obj.k[obj.k.length] = createElement(obj.d1,'div','','','points p1') ;
		obj.k[obj.k.length-1].style.left = (obj.arr[i]-1)/obj.max*100+'%';
		obj.k[obj.k.length-1].style.width = 100/obj.max+'%';
		obj.k[obj.k.length-1].setAttribute('onclick',obj.oname+'.inp.value = '+obj.arr[i]);
	}

obj.DD.innerHTML = obj.arr.length + ' ( '+(obj.arr.length/obj.max*100).toFixed(2)+'% )'

	
}

function clearPoints(obj) {
	for (var i=0;i<obj.k.length;i++) {
		obj.d1.removeChild(obj.k[i])
	}
	//obj.k = [];
}



//Functions



function setCookie(name,value,ex) {
var d = new Date();
d.setTime(d.getTime() + ex*24*60*60*1000);
document.cookie = name + '=' + value + ';expires=' + d.toUTCString() +'; path=/'


}

function getCookie(name,bool) {
	cname = name + '=';
	var dC = decodeURIComponent(document.cookie);
	var arrC = dC.split(';');
	for (var i=0;i<arrC.length;i++) {
		var C=arrC[i];

		while (C.charAt(0) == ' ') {
			C = C.substring(1);
		}

		if (!bool) {

			if (C.indexOf(cname)==0) {
				return C.substring(cname.length,C.length);
			}
		}else{
		setCookie(C.split('=')[0],'',-1)
		}
	}
	return '';
		
}


function createElement(tg,tag,text,id,Class) {
var nE = document.createElement(tag);
nE.appendChild(document.createTextNode(text));
var e = tg.appendChild(nE);
e.id = id;
e.setAttribute('class',Class);
return e;
}


