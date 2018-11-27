///setDialogLine(index, str, spr)
with (obj_dController)
{
    if (argument_count == 1)
    {
        if (argument[0] < tDialogs) dText[argument[0]] = argument[1];
    } else if (argument_count == 2) {
        if (argument[0] < tDialogs)
        {
            dText[argument[0]] = argument[1];
            dFace[argument[0]] = argument[2];
        }
    }
}
