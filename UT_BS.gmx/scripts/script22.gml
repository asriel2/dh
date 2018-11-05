///formatText(x, y, str)

initial_x = argument0;
initial_y = argument1;
cString = argument2;
defhsep = 5;
cLen = string_length(' ');
cColor = c_white;

for (var i = 0; i < string_length(cString); ++i)
{
    omittedChars[i] = false;
}

for (var i = 0; i < string_length(cString); ++i)
{
    cChar = string_char_at(cString, i);
    if (cChar == '{') 
    {
        if ((string_char_at(cString, i + 7)) == '}')
        {
            var rojo = string_char_at(cString, i + 1) + string_char_at(cString, i + 2);
            var verde = string_char_at(cString, i + 3) + string_char_at(cString, i + 4);
            var azul = string_char_at(cString, i + 5) + string_char_at(cString, i + 6);
            
            if ((col = make_color_rgb(rojo, verde, azul)) != noone)
            {
                cColor = col;
                
                for (var j = i; j < i + 7; ++j) omittedChars[j] = true;
            }
        }
    }
    
    if (!omittedChars[i])
    {
        draw_text_color(initial_x + ((cLen + defhsep) * i), initial_y, cChar, cColor, cColor, cColor, cColor, 100);
    }
}
