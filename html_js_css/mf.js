//my functions 





//////---Date---//////

					//Is Date
function isDate(date) {
   return date.constructor === Date;
}

//get weekday
function getWeekName(date) {
    var weeks = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
    return weeks[date.getDay()]
}


//get month
function getMonthName(date) {
    var months = ['January' , 'February' , 'March' , 'April' , 'May' , 'June' , 'July' , 'August' , 'Sepember' , 'October ' , 'November' , 'December'];
    return months[date.getMonth()]
}







//////---Math---//////


//Random
function mfPickRandom(a,b) {
    return  a +Math.floor((b - a + 1) * Math.random());
}


//to Degree
function toDeg(r) {
    return r/Math.PI*180	;
}
//to Radian
function toRad(d) {
    var r = d*Math.PI/180	;
    return r		;
}








//////////---Cookie---///////////

function setCookie(name,value,ex) {	//Sets cookie (expires in ex
var d = new Date();			//miliseconds)
d.setTime(d.getTime() + ex*24*60*60*1000);
document.cookie = name + '=' + value + ';expires=' + d.toUTCString() +'; path=/'


}

function getCookie(name,bool) {		//gets cookie (bool==1 delets)
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













///////////---STRINGS---////////////////


function toSCase(str) {			//frist letter upper case
return str.replace(str[0],str[0].toUpperCase())
}







///////////---ARRAYS-----///////////////


					//Is Array
function isArray(arr) {
    return arr.constructor === Array;
}



function rndE(arr) {			//choses one array element randomly
return arr[Math.floor(Math.random()*arr.length)]

}




function ch(arr) {			//choses arrray dinamicly
	//var arr=[];
	//arr=arrs;
	if (arr.constructor===Array) {
		var y=arr.shift()
		var x = arr[Math.floor(Math.random()*arr.length)];
		arr.splice(0,0,y);
		return ch(y)+ch(x);
	} else {
		return arr;
	}
}



function remAll(str,arr){			//removes all str from arr
    while (arr.indexOf(str)>-1) {
        arr.splice(arr.indexOf(str),1)
    }
}



function NotArr(a1,a2) {			//performs not a2 where a1
    var r= a1.map(function (v,i,a){		//is the union set
        if (!(a2.indexOf(v)>-1)){
            return v;
        }else{
            return 'e'
        }
    })
    while (r.indexOf('e')>-1) {
        r.splice(r.indexOf('e'),1)
    }
    return r
}


///////////---UTILS---///////////

function Arr2D(){			//create a 2d array
var t=this
this.arr=[[]];

this.c = function (i,j,val) {
if (!t.arr[i]){t.arr[i]=[]}
t.arr[i][j]=val
}


function addDictionary() {		//dictionary
var objList = {
push: function(name,value){Object.defineProperty(this,name,{get:function(){return value}})},
}

}


function getStyle(){
    //get style.innerHTML, remove all newlines, split by { and then }
    var style=document.getElementsByTagName("style")[0].innerHTML.replace(/\n/g,"").split("}").map(function(v,i,a){return v.split("{")})
    style.pop()
    //iterate though style to form json string outp
    var outp='{'
    style.forEach(function (v,i,a){
        outp+='"'+v[0]+'"'+':'+('{"'+(style[0][1].replace(/:/g,'":"')).replace(/;/g,'","')+'"}')
        if (i!=a.length-1){
            outp+=','
        }else{
            outp+='}'
        }
    })
    //return the style object with style properties subObjects
    return JSON.parse(outp)
}






///////////---LAYOUTS---/////////


function addCtrl () {			//a input box to run scripts
iiii = document.createElement('input');
var j = document.createElement('button');
document.body.appendChild(iiii);
document.body.appendChild(j);
j.onclick=doo;
function doo() {
eval(iiii.value)
}
}


function r(obj) {			//a window that desplays all
					//properties of an object
	var m;
	var txt = '';

	for (m in obj ) {

		txt += m + ':'+ obj[m]+ '</br>'; 
	}

	var e = document.body.appendChild(document.createElement('div'));
	var x = document.body.appendChild(document.createElement('button'));
	x.setAttribute('style','position:absolute;right:18;top:10;color:white;background-color:red')
	x.innerHTML='X'
	x.setAttribute('onclick','document.body.removeChild(document.getElementById("lrtBox"));document.body.removeChild(this) ')
	e.id='lrtBox'
	e.innerHTML=txt
	e.setAttribute('style','position:absolute;left:10;top:10;background-color:#dddddd; height:300px;width:600px;overflow:auto;border:1px solid red')
        



}



function Button(name,script,x,y,w,h) {
    this.obj=document.body.appendChild(document.createElement('button'))
    var e=this.obj;
    e.innerHTML=name;
    if (w&&h){
        e.style.width=w+'px';
        e.style.height=h+'px';
    }else{
        if (w){
            e.style.width=w+'px';
        }
        if (h){
            e.style.height=h+'px';
        }
    }
    if (!x){var x=0}
    if (!y){var y=0}
    e.style.left=x
    e.style.top=y
    if (!script){var script="alert('No script')"}
    e.setAttribute('onclick',script)


//var t=this
    Object.defineProperty(this,'w',{
    set:function (w){
    this.obj.style.width=w+'px'
            this.W=w
        }
    })
    Object.defineProperty(this,'h',{
        set:function (h){
            this.obj.style.height=h+'px'
            this.H=h
        }
    })
    Object.defineProperty(this,'x',{
        set:function (x){
            this.obj.style.left=x+'px'
            this.X=x
        }
    })
    Object.defineProperty(this,'y',{
        set:function (y){
            this.obj.style.top=y+'px'
            this.Y=y
        }
    })
    Object.defineProperty(this,'name',{
        set:function (name){
            this.obj.innerHTML=name
            this.Name=name
        }
    })
    Object.defineProperty(this,'script',{
        set:function (script){
            this.obj.setAttribute('onclick',script)
            this.Script=script
        }
    })
    this.Name=name
    this.W=w
    this.H=h
    this.X=x
    this.Y=y
    this.Script=script
    

    
}

