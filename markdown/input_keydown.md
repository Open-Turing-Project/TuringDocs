
#Input.KeyDown

##Syntax
**Input.KeyDown** (**var** *chars* : **array char of boolean**)



##Description
The **Input.Keydown** procedure allows a program to read which keys are currently being pressed. This procedure is different from **getch** in that it allows a program to detect when a user presses and releases a button. As such, it is not to be used in conjunction with **getch**.
The procedure can be used in games where an action takes place while a key is depressed.



##Example
Determine if the T key is pressed. Note that we check for the lower case letter.


        var chars : array char of boolean
        Input.KeyDown (chars)
        if chars ('t') then
            put "The T key is pressed"
        end if
##Details
The array returned is a list of all the characters. A key is currently pressed if the array element with the corresponding character is **true.** For example, the *a* key is pressed is *chars* ('a') is **true**. Note that each key is individually represented, so if the user has pressed Shift+a to get a 'A', then **Input.KeyDown** would register Shift and 'a' as pressed, but not 'A'.
A full list of all the possible characters that can be set with Input.KeyDown can be found in the **Key Codes** appendix.



##Details
The array returned is a list of all the characters. A key is currently pressed if the array element with the corresponding character is **true.** For example, the *a* key is pressed is *chars* ('a') is **true**. Note that each key is individually represented, so if the user has pressed Shift+a to get a 'A', then **Input.KeyDown** would register Shift and 'a' as pressed, but not 'A'.



##Details
The number of keys that can be pressed simultaneously is hardware dependent. Most keyboards can detect a minimum of two keys + Shift + Control + Alt. This means that if you are designing a two player game to be played at a single keyboard and you wish to make certain that players cannot hog the keyboard by holding down keys, you should not use more than 6 different keys and three of them should be the Shift, Control and Alt keys.



##Example
The program reads the keyboard and displays a message while the arrow keys are pressed. It can detect up to all four arrow keys pressed at once.



        var chars : array char of boolean
        loop
            Input.KeyDown (chars)
            locate (1, 1)
            if chars (KEY_UP_ARROW) then
                put "Up Arrow Pressed  " ..
            else
                put "                  " ..
            end if
            if chars (KEY_RIGHT_ARROW) then
                put "Right Arrow Pressed  " ..
            else
                put "                     " ..
            end if
            if chars (KEY_LEFT_ARROW) then
                put "Left Arrow Pressed  " ..
            else
                put "                    " ..
            end if
            if chars (KEY_DOWN_ARROW) then
                put "Down Arrow Pressed  " ..
            else
                put "                  " ..
            end if
        end loop
##Example
Another example is available that checks for all possible keys.



##Status
Exported qualified.
This means that you can only call the function by calling **Input.KeyDown**, not by calling **KeyDown**.


