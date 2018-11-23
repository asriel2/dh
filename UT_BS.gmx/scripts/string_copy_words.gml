///string_copy_words(str, index, count)
var str = argument0;
var index = argument1;
var count = argument2;

var char = string_char_at(str, count);

for (var i = count; i != string_length(str) + 1; ++i)
{
    if (char != " " && char != "")
    {
        ++count;
        char = string_char_at(str, count);
    } else {
        break;
    }
}

var return_str = "";

for (var i = index; i != count; ++i)
{
    return_str = return_str + string_char_at(str, i);
}

return return_str;
