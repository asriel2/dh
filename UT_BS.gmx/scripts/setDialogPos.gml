///setDialogPos(x, y)
with(obj_dController)
{
    if (tDialogs > 0)
    {
        for (var i = tDialogs + 1; i != 100; ++i)
        {
            xPos[i] = argument0;
            yPos[i] = argument1;
        }
    } else {
        for (var i = tDialogs; i != 100; ++i)
        {
            xPos[i] = argument0;
            yPos[i] = argument1;
        }
    }
}
