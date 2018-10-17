///mover_einout(time, start, change, duration)

var t = argument0;
var b = argument1;
var c = argument2;
var d = argument3;

t /= d / 2;

if (t < 1) return c / 2 * t * t + b;
t--;
return -c / 2 * (t * (t - 2) -1) + b;
