///resetDialog()
with (obj_dController) 
{
    event_inherited();
    tDialogs = 0;
    
    for (var i = 0; i != 100; ++i)
    {
        dHeigth[i] = 250;
        dWidth[i] = 500;
        imgSpd[i] = 1;
        dText[i] = "";
        dSound[i] = snd_talk_default;
        dFont[i] = ut_ebits_font;
        dFace[i] = noone;
        bColor[i] = c_white;
        dColor[i] = c_black;
        bSize[i] = 6;
        sleepTime[i] = 1;
        m3spr[i] = spr_dialogmode3_1;
        fixed[i] = false;
        dTextMaxW[i] = 500;
        dMode[i] = 0;
        lhsep[i] = 1;
        lvsep[i] = 1;
        tMargin[i] = 10;
        xPos[i] = 0;
        yPos[i] = 0;
    }
}
