
#explicitStringConstant

##Syntax
An _explicitStringConstant_ is a sequence of characters surrounded by quotation marks.


##Example
In the following, the explicit string constants are "Hello world", "" and "273 O'Reilly Ave.".

        var name : string := "Hello world"
        name := ""      % Null string, containing zero characters
        var address : string := "273 O'Reilly Ave."
##Details
Within an explicit string constant (and within an explicit character constant), the back slash \ is used to represent certain other characters as follows:


\"     quotation mark character
\n or \N   end of line character
\t or \T   tab character
\f or \F   form feed character
\r or \R   return character
\b or \B   backspace character
\e or \E   escape character
\d or \D   delete character
\\     backslash character


For example, **put** "_One\nTwo_" will output _One_ on one line and _Two_ on the next. In an explicit character constant (which is surrounded by single quotes, as in _'John'_), the backslash is not required before a double quote ", but it is required before a single quote ', as in these two constants:


_'John said_ "_Hello_" _to you'_
_'Don\'t cry'_.


You can use the caret ^ to specify ASCII control characters, for example:


'^H'   ASCII backspace character


The caret specifies that the top three bits of the character are set to zero. For any character _c_, the following is true:


'^c' = chr (ord ('c') & 2#11111)


However if _c_ is the question mark, as in '^?', the bits are not turned off.

Explicit string constants cannot cross line boundaries. To represent a string that is longer than a line, break it into two or more strings on separate lines and use catenation (+) to join the individual strings.

An explicit string constant can contain at most 255 characters (this is in implementation constraint).

String values are not allowed to contain characters with the code values of 0 or 128; these character values are called _eos_ (end of string) and _uninitchar_ (uninitialized character). These are reserved by the implementation to mark the end of a string value and to see if a string variable has been initialized.

