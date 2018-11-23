///getRealWords(str, index, count)
cString = argument0;
index = argument1;
count = ceil(argument2);
omittedChars = noone;
str = cString;

for (var i = 0; i < 1000; ++i)
{
    omittedChars[i] = false;
}

while (string_char_at(cString, count) != " " && string_char_at(cString, count) != "")
{
    for (var i = count; i != string_length(cString) + 1; ++i)
    {
        if (string_char_at(cString, count) != " " && string_char_at(cString, count) != "")
        {
            if (string_char_at(cString, i) == "{" && string_char_at(cString, i + 7) == "}")
            {
                count = i + 7;
                str = string_delete(str, i, i + 5);
                show_message(str);
                for (var g = i; g != i + 8; ++g) omittedChars[g] = true;
                break;
            }
        } else {
            break;
        }
    }
    ++count;
}
//var return_str = string_copy(cString, index, count);

/*for (var f = index; f != count; ++f)
{
    //if (omittedChars[f] == false) return_str = return_str + string_char_at(cString, f);
}*/
return str;
