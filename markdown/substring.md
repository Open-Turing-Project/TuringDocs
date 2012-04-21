
#substring

##Syntax
A *substring *is one of:
 (a)*stringReference* ( *leftPosition* .. *rightPosition* ) (b)*stringReference* ( *charPosition* )



##Description
A substring selects a part of another string. In form (a) the substring starts at the left position and runs to the right position. In form (b), the substring is only a single character. Turing support substrings of **char**(*n*) values.



##Example



        var word : string := "bring"
        put word (2 .. 4)       % Outputs rin
        put word (3)        % Outputs i
        put word (2 .. *)       % Outputs ring; the star (*) means
                        % the end of the string.
        put word (* - 2 .. * - 1 )  % Outputs in
##Details
The leftmost possible position in a string is numbered 1. The last position in a string can be written as an asterisk (*). For example, *word* (2 .. *) is equivalent to *word* (2 .. *length*(*word*)).
Each of *leftPosition*,* rightPosition*,* *and *charPosition* must have one of these forms:
 (a) *expn* (b) ***** (c) ***** **-** *expn*
The exact rules for the allowed values of *leftPosition *and *rightPosition* are:
 (1) *leftPosition* must be at least 1, (2) *rightPosition* must be at most *length *(*stringReference*), and (3) the length of the selected substring must zero or more.
This specifically allows null substrings such as *word *(1, 0) in which *rightPosition *is 0 and *word *(6, 5) in which *leftPosition *is one more that **length** (*stringReference*).
Note that substrings are not assignable. For example, if *s* is a string, the statement *s *(3) := "a" is illegal in Turing.
Turing supports substrings of **char**(*n*) values. See **char**(*n*). If a substring of **char**(*n*) value *t* has two operands, as in *t*(2..77), the result type of this operation is a **string**. If the substring has one operand, as in *t*(7), this becomes, in effect,  a subscript into an array of characters. The result is a reference to a **char**, which can be assigned to or passed to a **var** parameter.



##See also
**[string1.html](string)**, **[char.html](char)**, **[char.html](char)**(*n*), *[explicitstringconstant.html](explicitStringConstant)*, *[explicitcharconstant.html](explicitCharConstant)*, catenation and **[length.html](length)**.


