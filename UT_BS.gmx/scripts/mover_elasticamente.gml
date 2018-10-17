///mover_elasticamente(time, start, change, duration)

var t = argument0;
var b = argument1;
var c = argument2;
var d = argument3;

var s = 1.7;
var p = 0;
var a = c;
if (t == 0) return b;
t /= d;
if (t == 1) return b + c;
if (!p) p = d *.4;
if (a < abs(c))
{
    a = c;
    s = p / 4;
} else {
    s = p / (2 * pi) * arcsin(c / a);
}

return a * power(2, -10 * t) * sin((t * d - s) * (2*pi) / p) + c + b;
