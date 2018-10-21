///clearDialog()
with (obj_Dialog)
{
    for(var i = 0; i < 100; ++i)
    {
        texto[i, 0] = -1;
        texto[i, 1] = "";
        texto[i, 2] = noone;
    }
    cLine = 0;
    tLines = 0;
    xPos = 0;
    yPos = 0;
    lSound = snd_menu_select;
    Font = ut_ebits_font;
    Ancho = 100;
    tDisplay = false;
}
