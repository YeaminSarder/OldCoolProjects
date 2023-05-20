onmessage = function (e) {
var prom= new Promise()
console.log(prom)
console.log('worker:listened ' + e.data)
postMessage('worker:hi')

}