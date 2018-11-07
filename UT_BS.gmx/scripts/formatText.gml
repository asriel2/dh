///formatText(x, y, str, lhsep, lvsep)

initial_x = argument[0];
initial_y = argument[1];
cString = argument[2];
lhsep = 1;
lvsep = 1;

if (argument_count == 4) {
    lhsep = argument[4];
} else if (argument_count == 5) {
    lhsep = argument[4];
    lvsep = argument[5];
}

cLen = string_width("x");
cAlt = string_height("x");
cColor = c_white;
letterIndex = 0;
rawIndex = 0;

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
        letterIndex = 0;
        omittedChars[i] = true;
    } else if (cChar == '{' || cChar == '}') {
        omittedChars[i] = true;
    }
    
    if (omittedChars[i] == false)
    {
        letterIndex = letterIndex + 1;
        
        draw_set_color(cColor);

        draw_text(initial_x + ((cLen + lhsep) * letterIndex), initial_y + ((cAlt + lvsep) * rawIndex), cChar);
    }
}
