
#GUI.SetEchoChar

##Syntax
**GUI.SetEchoChar** (*widgetID* : **int**, *echoChar* : **char**)

##Description
The **GUI.SetEchoChar** procedure is used with text fields,especially when using a text field to input a password.When the **GUI.SetEchoChar** is called with a text field, any character entered into the text field will appear as thecharacter specified by *inputChar*.
This allows you to use the text field to enter a password.The characters that the user types will be echoed with thecharacter specified by *inputChar* (often an asterisk).

##Example
This program displays a text field.  As the user enterscharacters, each character is represented as a '*'.  Whenthe user enters return, the program exits after displayingthe actual text entered into the text field.

        import GUI

        procedure EchoString (s : string)
            put "You entered \"", s, "\""
            GUI.Quit
        end EchoString

        var tf := GUI.CreateTextField (10, 100, 100, "", EchoString)
        GUI.SetEchoChar (tf, '*')
        loop
            exit when GUI.ProcessEvent
        end loop
##Details
Note that the *echoChar* argument to **GUI.SetEchoChar**must be a character, not a string. This means the charactershould be enclosed in single quote marks ('), not doublequotes (").

##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetEchoChar**, not by calling **SetEchoChar**.
