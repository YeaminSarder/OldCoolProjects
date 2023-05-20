function aniUp(id,start,end,time,inc) {
	var aniI = document.getElementById(id);
	aniI.style.position='absolute';
	if (start==='') {
		var start = aniI.style.top.slice(0,-2);
	}
	if (time==='') {
		var time = 5;
	}
	var top = start;
	if (inc==='') {
		var time = 1;
	}
	var inter = setInterval(up,time);

	function up() {
		top -= inc;
		aniI.style.top = top + 'px';
		if (top<=end) {
			clearInterval(inter);
		}
	}
}


function aniDown(id,start,end,time,inc) {
	var aniI = document.getElementById(id);
	aniI.style.position='absolute';
	if (start==='') {
		var start = aniI.style.top.slice(0,-2);
	}
	if (time==='') {
		var time = 5;
	}
	if (inc===undefined) {
		var time = 1;
	}
	var top = start;
	var inter = setInterval(up,time);

	function up() {
		top += inc;
		aniI.style.top = top + 'px';
		if (top>=end) {
			clearInterval(inter);
		}
	}

}


function aniLeft(id,start,end,time,inc) {
	var aniI = document.getElementById(id);
	aniI.style.position='absolute';
	if (start==='') {
		var start = aniI.style.left.slice(0,-2);
	}
	if (time==='') {
		var time = 5;
	}
	if (inc===undefined) {
		var time = 1;
	}
	var left = start;
	var inter = setInterval(up,time);

	function up() {
		left -= inc;
		aniI.style.left = left + 'px';
		if (left<=end) {
			clearInterval(inter);
		}
	}
}




function aniRight(id,start,end,time,inc) {
	var aniI = document.getElementById(id);
	aniI.style.position='absolute';
	if (start==='') {
		var start = aniI.style.left.slice(0,-2);
	}
	if (time==='') {
		var time = 5;
	}
	if (inc===undefined) {
		var time = 1;
	}
	var left = start;
	var inter = setInterval(up,time);
	function up() {
		left += inc;
		aniI.style.left = left + 'px';
		if (left>=end) {
			clearInterval(inter);
		}

	}
}



function dir(obj,s,m) {
	if (Math.abs(m)<1) {
		top = s;	
		obj.style.top=window.innerHeight-25-top;
		obj.style.left=s/m + 5;
	}
	if (Math.abs(m)>1) {
		obj.style.left=s + 5;
		top = m*s;	
		obj.style.top=window.innerHeight-top - 25;
	}
	if (1===Math.abs(m)||m===0) {
		obj.style.left=s + 5;
		top = m*s;	
		obj.style.top=window.innerHeight - 25 - top;		
	}
	if (m===undefined) {
		obj.style.left= 5;
		top = s;	
		obj.style.top=window.innerHeight-top - 25;		
	}


}




