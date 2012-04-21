
#char

##Syntax
**char**

##Description
Each variable whose type is a **char** contains a single character, such as the letter *A*, the digit *3* or the special character &.

##Example
Count characters until a period is found. Character *c* is read using a **get** statement and is compared to the explicit character constant '.'.
        var c : char
        var counter := 0
        loop
            exit when eof
            get c           % Read a single character
            exit when c = '.'   % Single quotes for char constant
            counter := counter + 1
        end loop
        put counter, " characters before the period"
##Example
Count capital letters. This example illustrates the use of the **char** type as the subscript type for the *frequency* array, the use of character variable *c* as a subscript, and the use of *d* as a **for** counter that ranges across the letters A to Z.
        var frequency : array 'A' .. 'Z' of nat
        for d : 'A' .. 'Z'
            frequency (d) := 0
        end for
        loop                % Tabulate use of capital letters
            exit when eof
            var c : char
            get c           % Read one character
            if c >= 'A' and c <= 'Z' then
                frequency (c) := frequency (c) + 1
            end if
        end loop
        for d : 'A' .. 'Z'      % Print frequency of capital letters
            put d, " ", frequency (d)
        end for
##Details
The type **string** (or **char**(*n*)) is used instead of **char** when more than one character needs to be stored, such as the string of characters *Henry*. Unless the program needs to be quite efficient, it is usually easier to use the **string** type. See also the **char**(*n*) type, which always stores exactly* n *characters.
The **char** type differs from the **string**(1) type in the following way: **char** always represents exactly one character, while **string**(1) can represent either the null string or a string containing one character. The **char** type is similar to the **char**(1) type in that both contain at most one character.
The **char** type is an index type and can be used, for example, as subscripts, **for** ranges and **case** labels. For example, this declaration
 **var** *charCounts* : a**rray** **char** **of** **int**
creates an array whose subscripts are characters.
The **char** type is a scalar type, which implies that its parameters are passed by value, instead of by reference (which is the case for **char**(*n*) and **string**).
Values of the **char** type can be assigned and they can be compared for both equality and ordering. Explicit **char** constants are written as a character surrounded by single quotes, for example, 'A'. For details, including how to write control characters, see *explicitCharConstant*.
Characters can be read and written by **get** and **put** statements.
There are 256 **char** values, corresponding to the distinct patterns in an 8-bit byte. This allows the patterns *eos* (internal value 0) and *uninitchar* (internal value 128) to be **char** values (these patterns are not allowed in the **string** type; see the **string** type). All 256 patterns are used, so there is no pattern left to be the "uninitialized value". Uninitialized checking is not done for the **char** type.
The **ord** and **chr** functions convert between the **char** values and their corresponding numeric representation in a byte. See **ord** and **chr**.
In general, you can freely intermix the values of the types **char**, **char**(*n*) and **string**. This means that catenation (+), comparisons, **length** and substrings can be applied to any of these types. See **char**(*n*) for details about conversions between **char**, **char**(*n*) and **string**.

##See also
**[string1.html](string)** and **[char_n.html](char(*n*))** for related types. See **[ord.html](ord)** and **[chr.html](chr)** functions for conversion from and to ASCII values. See *[explicitcharconstant.html](explicitCharConstant)* for information on special characters like caret (^) and backslash (\).