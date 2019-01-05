///addDialogRLine(str, spr)
with (obj_dController)
{
    if (argument_count == 2)
    {
        dText[tDialogs] = argument[0];
        dFace[tDialogs] = argument[1];
        bDialog[tDialogs] = true;
        tDialogs++;
    } else if (argument_count == 1) {
        dText[tDialogs] = argument[0];
        bDialog[tDialogs] = true;
        tDialogs++;
    }
}
