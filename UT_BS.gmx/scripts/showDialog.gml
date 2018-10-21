///showDialog()
with (obj_dController)
{
    if (!instance_exists(cDialog))
    {
        cDialog = instance_create(xPos + xOffset, yPos + yOffset, obj_Dialog);
        cDialog.dText = dText;
        cDialog.dColor = dColor;
        cDialog.dSound = dSound;
        cDialog.dFont = dFont;
        cDialog.tMargin = tMargin;
        cDialog.tWidth = tWidth;
        cDialog.tSpd = tSpd;
    } else {
        var pSize = string_length(dText[cDialog.tPage]);
        if (string_length(cDialog.tVisible) < pSize)
        {
            cDialog.lSpace = pSize + 1;
            cDialog.tCount = pSize + 1;
        } else {
            cDialog.tPage++;
            cDialog.tCount = 0;
            if (cDialog.tPage > tDialogs) destroy_object(cDialog);
        }
    }
}
