/// @description scr_is_object_colliding_area
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg obj

var x1 = argument0;
var x2 = argument2;
var y1 = argument1;
var y2 = argument3;
var obj = argument4;

var colLine = instance_create(0, 0, obj_sensor);

colLine.x = x1;
colLine.y = y1;
colLine.image_angle = point_direction(x1, y1, x2, y2);
colLine.image_xscale = point_distance(x1, y1, x2, y2);
colLine.image_yscale =  0.04;

return place_meeting(obj.x, obj.y, colLine);
