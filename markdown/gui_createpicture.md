
#GUI.CreatePicture

##Syntax
**GUI.CreatePicture** ( *x*, *y*, *picture* : **int**,     *mergePic* : **boolean** ) : **int**



##Description
Creates a picture and returns the picture's widget ID. 
The picture widget is used to display a picture. It can be used to display a picture either merged into the background or not.
The *x* and *y* parameters specify the lower-left corner of the picture. The *picture* parameter specifies the picture ID of the picture. The picture ID is received from a **Pic.New** or **Pic.FileNew** call. Do not call **Pic.Free** for this picture ID until the button has been disposed of by calling **GUI.Dispose**. The *mergePic* parameter is a boolean that specifies whether anything that was the background colour in the picture (usually colour 0) should be set to the background colour of the window. 
A picture widget is a passive widget and cannot be enabled or disabled.
**Two Pictures**

![Doc image](gui_createpicture01.gif)


##Example
The following program draws two pictures, merged and not merged.



        import GUI 
        View.Set ("graphics:230;135,nobuttonbar") 
        
        % We'll need to create a picture for our Picture widget. Normally 
        % an external file (and Pic.FileNew) would be used.
        Draw.FillOval (50, 50, 50, 50, blue)
        Draw.FillBox (17, 17, 83, 83, brightred)
        Draw.FillStar (17, 17, 83, 83, brightgreen)
        Draw.FillMapleLeaf (37, 37, 63, 63, brightpurple)
        var pic : int := Pic.New (0, 0, 100, 100)
        var picture1, picture2 : int
        var label1, label2 : int
        
        GUI.SetBackgroundColor (gray)
        
        label1 := GUI.CreateLabel (15, 5, "Picture (no merge)")
        picture1 := GUI.CreatePicture (10, 25, pic, false)
        
        label2 := GUI.CreateLabel (135, 5, "Picture (merge)")
        picture2 := GUI.CreatePicture (120, 25, pic, true)
##Details
When **GUI.CreatePicture*** *is called, the newly created picture will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the *display* parameter set to false. 
A picture widget is a passive widget and cannot be enabled or disabled.



##Details
The following GUI subprograms can be called with a picture as the *widgetID* parameter:
 **GUI.Show**, **GUI.Hide**, **GUI.Dispose**,**GUI.GetX**, **GUI.GetY**, **GUI.GetWidth**,**GUI.GetHeight**, **GUI.SetPosition**, **GUI.SetSize**, **GUI.SetPositionAndSize**



##Status
Exported qualified.
This means that you can only call the function by calling **GUI.CreatePicture**, not by calling **CreatePicture**.


