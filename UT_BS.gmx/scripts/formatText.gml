///formatText(x, y, str, lhsep, lvsep, mwidth, fixed)

initial_x = argument0;
initial_y = argument1;
cString = argument2;
lhsep = argument3;
lvsep = argument4;
fixed = argument5;
cAlt = string_height("x");
cWidth = 0;
cColor = c_white;
rawIndex = 0;
cChar = "";

for (var i = 1; i != string_length(cString) + 1; ++i)
{
    omittedChars[i] = false;
}

for (var i = 1; i != string_length(cString) + 1; ++i)
{
    cChar = string_char_at(cString, i);
    
    if (cChar == '{') 
    {
        if ((string_char_at(cString, i + 7)) == '}')
        {   
            var rojo = string_char_at(cString, i + 1) + string_char_at(cString, i + 2);
            var verde = string_char_at(cString, i + 3) + string_char_at(cString, i + 4);
            var azul = string_char_at(cString, i + 5) + string_char_at(cString, i + 6);
            
            cColor = make_color_rgb(hex_to_dec(rojo), hex_to_dec(verde), hex_to_dec(azul));
            
            for (var j = i + 1; j != i + 7; ++j) 
            {
                omittedChars[j] = true;
            }
        }
    }
    
    if (cChar == '#')
    {
        rawIndex = rawIndex + 1;
        cWidth = 0;

        if (fixed)
        {
            cChar = "";
            cWidth = string_width("    ");
        } else {
            cWidth = 0;
            omittedChars[i] = true;
        }
    } else if (cChar == '{' || cChar == '}') {
        omittedChars[i] = true;
    }
    
    if (omittedChars[i] == false)
    {
        draw_set_color(cColor);
        draw_text(initial_x + cWidth, initial_y + ((cAlt + lvsep) * rawIndex), cChar);
        cWidth = cWidth + string_width(cChar) + lhsep;
    }
}
