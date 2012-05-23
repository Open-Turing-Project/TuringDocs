
# char

## Syntax
**char**

## Description
Each variable whose type is a **char** contains a single character, such as the letter _A_, the digit _3_ or the special character &.


## Example
Count characters until a period is found. Character _c_ is read using a **get** statement and is compared to the explicit character constant '.'.

        var c : char
        var counter := 0
        loop
            exit when eof
            get c           % Read a single character
            exit when c = '.'   % Single quotes for char constant
            counter := counter + 1
        end loop
        put counter, " characters before the period"
## Example
Count capital letters. This example illustrates the use of the **char** type as the subscript type for the _frequency_ array, the use of character variable _c_ as a subscript, and the use of _d_ as a **for** counter that ranges across the letters A to Z.

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
## Details
The type **string** (or **char**(_n_)) is used instead of **char** when more than one character needs to be stored, such as the string of characters _Henry_. Unless the program needs to be quite efficient, it is usually easier to use the **string** type. See also the **char**(_n_) type, which always stores exactly _n_ characters.

The **char** type differs from the **string**(1) type in the following way: **char** always represents exactly one character, while **string**(1) can represent either the null string or a string containing one character. The **char** type is similar to the **char**(1) type in that both contain at most one character.

The **char** type is an index type and can be used, for example, as subscripts, **for** ranges and **case** labels. For example, this declaration


**var** _charCounts_ : a**rray** **char** **of** **int**  


creates an array whose subscripts are characters.

The **char** type is a scalar type, which implies that its parameters are passed by value, instead of by reference (which is the case for **char**(_n_) and **string**).

Values of the **char** type can be assigned and they can be compared for both equality and ordering. Explicit **char** constants are written as a character surrounded by single quotes, for example, 'A'. For details, including how to write control characters, see _explicitCharConstant_.

Characters can be read and written by **get** and **put** statements.

There are 256 **char** values, corresponding to the distinct patterns in an 8-bit byte. This allows the patterns _eos_ (internal value 0) and _uninitchar_ (internal value 128) to be **char** values (these patterns are not allowed in the **string** type; see the **string** type). All 256 patterns are used, so there is no pattern left to be the "uninitialized value". Uninitialized checking is not done for the **char** type.

The **ord** and **chr** functions convert between the **char** values and their corresponding numeric representation in a byte. See **ord** and **chr**.

In general, you can freely intermix the values of the types **char**, **char**(_n_) and **string**. This means that catenation (+), comparisons, **length** and substrings can be applied to any of these types. See **char**(_n_) for details about conversions between **char**, **char**(_n_) and **string**.


## See also
**[string](string1.html)** and **[char(_n_)](char_n.html)** for related types. See **[ord](ord.html)** and **[chr](chr.html)** functions for conversion from and to ASCII values. See _[explicitCharConstant](explicitcharconstant.html)_ for information on special characters like caret (^) and backslash (\).

