///showDialog()
with (obj_dController)
{
    if (!instance_exists(cDialog))
    {
        cDialog = instance_create(xPos + xOffset, yPos + yOffset, obj_Dialog);
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
    } else {
        var pSize = string_length(dText[cDialog.tPage]);
        if (string_length(cDialog.tVisible) < pSize)
        {
            cDialog.tCount = pSize + 1;
        } else {
            cDialog.tPage++;
            cDialog.tCount = 0;
            if (cDialog.tPage > tDialogs) destroy_object(cDialog);
        }
    }
}
