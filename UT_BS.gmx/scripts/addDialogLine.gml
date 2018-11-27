///addDialogLine(str, spr)
with (obj_dController)
{
    if (argument_count == 1)
    {
        dText[tDialogs] = argument[0];
        dFace[tDialogs] = argument[1];
        tDialogs++;
    } else {
        dText[tDialogs] = argument[0];
        tDialogs++;
    }
}
