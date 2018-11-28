///setDialogSprite(spr)
with (obj_dController) 
{
    if (tDialogs > 0) for (var i = tDialogs + 1; i != 100; ++i) m3spr[i] = argument0;
    else for (var i = tDialogs; i != 100; ++i) m3spr[i] = argument0;
}
