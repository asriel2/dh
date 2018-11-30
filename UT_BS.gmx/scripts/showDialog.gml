///showDialog()
with (obj_dController)
{
    if (!instance_exists(cDialog))
    {
        cDialog = instance_create(x, y, obj_Dialog);
        cDialog.dText = dText;
        cDialog.dSound = dSound;
        cDialog.dFont = dFont;
        cDialog.tMargin = tMargin;
        cDialog.dWidth = dWidth;
        cDialog.dMode = dMode;
        cDialog.dFace = dFace;
        cDialog.dHeight = dHeight;
        cDialog.lhsep = lhsep;
        cDialog.lvsep = lvsep;
        cDialog.bColor = bColor;
        cDialog.dColor = dColor;
        cDialog.bSize = bSize;
        cDialog.sleepTime = sleepTime;
        cDialog.fixed = fixed;
        cDialog.yPos = yPos;
        cDialog.xPos = xPos;
        cDialog.dTextMaxW = dTextMaxW;
        cDialog.imgSpd = imgSpd;
        cDialog.m3spr = m3spr;
    } else {
        var pSize = string_length(cDialog.dText[cDialog.tPage]);   
        
        if (string_length(cDialog.tVisible) < pSize)
        {
            cDialog.tCount = pSize;
        } else {
            cDialog.tPage++;
            cDialog.tCount = 0;
            if (cDialog.tPage > tDialogs) destroy_object(cDialog);
        }
    }
}
