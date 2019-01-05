///resetDialogLines()
with (obj_dController) 
{
    event_inherited();
    tDialogs = 0;
    
    for (var i = 0; i != 100; ++i)
    {
        dText[i] = "";
    }
}
