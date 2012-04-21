
#Str.Upper

##Syntax
**Str.Upper** (*s* : **string**) : **string**



##Description
The **Str.Upper** function takes the string *s* and returnsa string in which all the lower case letters are converted to upper case. For example, Str.Upper ("ABC123def") returns"ABC123DEF".



##Example
This program obtains lines of text from the user and outputs thelines converted to upper case.


        var line : string
        loop
            put "Enter a line of text (empty to quit): " ..
            get line : *
            exit when line = ""
            put "The upper case version: ", Str.Upper (line)
        end loop
    
##Status
Exported qualified.
This means that you can only call the function by calling **Str.Upper**, not by calling **Upper**.



##See also
**[str_lower.html](Str.Lower)** and **[str_trim.html](Str.Trim)**.


