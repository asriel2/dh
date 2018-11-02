///resetDialog()
with (obj_dController) 
{
    event_inherited();
    cDialog = noone;
    dIndex = 0;
    xOffset = -32;
    yOffset = -40;
    tSpd = 0.5;
    tWidth = 100;
    tMargin = 10;
    xPos = 0;
    yPos = 0;
    tDialogs = 0;
    dMode = 0;
    
    for (var i = 0; i < 100; i = i + 1)
    {
        dText[i] = "";
        dColor[i] = c_white;
        dSound[i] = snd_talk_default;
        dFont[i] = ut_ebits_font;
    }
}
