
#Input.Pause

##Syntax
**Input.Pause**



##Description
The **Input.Pause** procedure simply waits for a key to be pressed and then returns. It echoes the key pressed if **echo** mode is set. (See **View.Set** for setting **echo** mode)
This subprogram helps avoid having to declare a variable declaration and then make a call to **getch**or **getchar**.



##Example
This program pauses after every name read from the file.



        var f : int
        var line : string
        open : f, "data.txt", get
        loop
            exit when eof (f)
            get : f, line : *
            put name
            Input.Pause
        end loop
        close : f
##Status
Exported qualified.
This means that you can only call the function by calling **Input.Pause**, not by calling **Pause**.


