
#Pic.Blend

##Syntax
**Pic.Blend** (_picID1_, _picID2_, _pct_ : **int**) : **int**



##Description
**Pic.Blend** is used to create a new picture by blending twoidentically sized pictures. The resulting picture is created bytaking _pct_ % of the first picture and adding it to(100 - _pct_) % of the second picture.



##Details
Note that the blended picture is a newly created picture. When it is no longer needed, its memory should be released by using **Pic.Free**.
Note that if _pct_ is 100, then the resulting picture willbe identical to _picID1_.  if _pct_ is 0, then the resulting picture will be identical to _picID2_.



##Example
The program creates two identically sized pictures, blends themtogether and displays all three pictures.  You can vary theblend percentage to obtain different results.


![Doc image](pic_blend01.gif)

        View.Set ("graphics:340;140,nobuttonbar")
        % Create the original pictures
        var pic1, pic2, picBlended : int
        Draw.FillBox (0, 0, 100, 100, brightred)
        Draw.FillOval (50, 50, 50, 50, brightblue)
        pic1 := Pic.New (0, 0, 100, 100)
        cls
        Draw.FillStar (10, 10, 90, 90, brightgreen)
        Draw.FillMapleLeaf(10, 10, 90, 90, brightred)
        pic2 := Pic.New (0, 0, 100, 100)
        cls
        % Create new picture by blending 30% from pic1, 70% from pic2
        picBlended := Pic.Blend (pic1, pic2, 30)
        % Draw the three images
        Pic.Draw (pic1, 10, 10, picCopy)
        Pic.Draw (pic2, 120, 10, picCopy)
        Pic.Draw (picBlended, 230, 10, picCopy)
        
##Status
Exported qualified.
This means that you can only call the function by calling **Pic.Blend**, not by calling **Blend**.


