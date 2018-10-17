/// create_bbox(x, y, ancho, alto, obj1, obj2, obj3, obj4)
/// @arg x
/// @arg y
/// @arg ancho
/// @arg alto
/// @arg obj1
/// @arg obj2
/// @arg obj3
/// @arg obj4

var px = argument0;
var py = argument1;
var ancho = argument2;
var alto = argument3;
var colLine1 = argument4;
var colLine2 = argument5;
var colLine3 = argument6;
var colLine4 = argument7;

//Linea vertical izquierda
colLine1.x = px;
colLine1.y = py;
colLine1.image_angle = point_direction(px, py, px, py + alto);
colLine1.image_xscale = point_distance(px, py, px, py + alto) / 6;
colLine1.image_yscale =  0.04;

//Linea horizontal superior
colLine2.x = px - 4.5;
colLine2.y = py;
colLine2.image_angle = point_direction(px - 4.5, py, px + ancho, py);
colLine2.image_xscale = point_distance(px - 4.5, py, px + ancho, py) / 6;
colLine2.image_yscale =  0.04;


//Linea vertical derecha
colLine3.x = px + ancho - 1;
colLine3.y = py;
colLine3.image_angle = point_direction(px + ancho - 1, py, px + ancho - 1, py + alto);
colLine3.image_xscale = point_distance(px + ancho - 1, py, px + ancho - 1, py + alto) / 6;
colLine3.image_yscale =  0.04;

//Linea horizontal inferior
colLine4.x = px - 4.5;
colLine4.y = py + alto - 4.5;
colLine4.image_angle = point_direction(px - 4.5, py + alto - 4.5, px + ancho, py + alto - 4.5);
colLine4.image_xscale = point_distance(px - 4.5, py + alto - 4.5, px + ancho, py + alto - 4.5) / 6;
colLine4.image_yscale =  0.04;
