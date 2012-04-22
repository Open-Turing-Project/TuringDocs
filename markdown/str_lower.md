
#Str.Lower

##Syntax
**Str.Lower** (_s_ : **string**) : **string**



##Description
The **Str.Lower** function takes the string _s_ and returnsa string in which all the upper case letters are converted to lower case. For example, `Str.Lower ("ABC123def")` returns`"abc123def"`.



##Example
This program obtains lines of text from the user and outputs thelines converted to lower case.


        var line : string
        loop
            put "Enter a line of text (empty to quit): " ..
            get line : *
            exit when line = ""
            put "The lower case version: ", Str.Lower (line)
        end loop
    
##Status
Exported qualified.
This means that you can only call the function by calling **Str.Lower**, not by calling **Lower**.



##See also
**[str_upper.html](Str.Upper)** and **[str_trim.html](Str.Trim)**.


