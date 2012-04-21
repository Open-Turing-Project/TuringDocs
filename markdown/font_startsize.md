
#Font.StartSize

##Syntax
**Font.StartSize** (*fontName*, *fontStyle* : **string**)

##Description
**Font.StartSize** is used to start a listing of all the sizes for a particular font name and style. 
The *fontName* parameter should be an actual font name (as opposed to the default names of serif, etc). You can get a list of the font names by using the **Font.StartName** and **Font.GetName** subprograms. The *fontStyle* parameter should be in the same format as would appear in the **Font.New** procedure.

##Example
The program lists all the fonts, styles and sizes available on the system.
        var fontName : string
        var bold, italic, underline : boolean
        var size : int
        var styles : array boolean, boolean, boolean of string := 
            init ("", "underline", "italic", "italic, underline", "bold",           
                         "bold,underline", "bold,italic", "bold,italic,underline")
        Font.StartName
        loop
            fontName := Font.GetName
            exit when fontName = ""
            Font.GetStyle (fontName, bold, italic, underline)
            for b : false .. bold
                for i : false .. italic
                    for u : false .. underline
                        put fontName : 30, styles (b, i, u) : 22 ..
                        Font.StartSize (fontName, styles (b, i, u) )
                        loop
                            size := Font.GetSize
                            exit when size = 0
                            if size = -1 then put "scalable  " ..
                            else put size, " " ..
                            end if
                        end loop 
                        put ""
                    end for
                end for
            end for
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **Font.StartSize**, not by calling **StartSize**.
