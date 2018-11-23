///resetDialog()
with (obj_dController) 
{
    event_inherited();
    cDialog = noone;
    dIndex = 0;
    dWidth = 80;
    tMargin = 10;
    xPos = 0;
    yPos = 0;
    tDialogs = 0;
    dMode = 0;
    lhsep = 1;
    lvsep = 1;
    dTextMaxW = 100;
    fixed = true;
    
    for (var i = 0; i < 100; i = i + 1)
    {
        dText[i] = "";
        dSound[i] = snd_talk_default;
        dFont[i] = ut_ebits_font;
        dFace[i] = noone;
        bColor[i] = c_white;
        dColor[i] = c_black;
        bSize[i] = 6;
    }
}
