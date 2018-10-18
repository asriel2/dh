///test_movimiento(Objetivo, Actual, DTime)
var g = argument0;
var c = argument1;
var dt = argument2;

var d = g - c;

if (d > dt) return c + dt;
if (d < -dt) return c - dt;

return g;
