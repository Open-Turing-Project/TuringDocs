
#Str.Trim

##Syntax
**Str.Trim** (_str_ : **string**) : **string**



##Description
The **Str.Trim** function takes the string _str_ and returnsa string in all the leading and trailing spaces (the spaces at thebeginning and the end) are deleted. For example, `Str.Trim ("   This is a test ")` returns`"This is a test"`. If _str_ only has spaces in it, then**Str.Trim** will return an empty string.



##Example
This program obtains input from the user until the user enters a linewith non-whitespace characters in it.


        var line : string
        loop
            put "Enter a non-empty line of text: " ..
            get line : *
            exit when Str.Trim (line) not= ""
        end loop
        put "You entered ", line
    
##Status
Exported qualified.
This means that you can only call the function by calling **Str.Trim**, not by calling **Trim**.



##See also
**[str_lower.html](Str.Lower)** and **[str_upper.html](Str.Upper)**.


