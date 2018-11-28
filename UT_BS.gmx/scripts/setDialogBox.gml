///setDialogBox(width, height)
with (obj_dController)
{
    if (tDialogs > 0)
    {
        for (var i = tDialogs + 1; i != 100; ++i)
        {
            dWidth[i] = argument0;
            dHeight[i] = argument1;
        }
    } else {
        for (var i = tDialogs; i != 100; ++i)
        {
            dWidth[i] = argument0;
            dHeight[i] = argument1;
        }
    }
}
