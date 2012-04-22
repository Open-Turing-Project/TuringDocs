
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

quotation mark character







backslash character

For example, **put** "_One\nTwo_" will output _One_ on one line and _Two_ on the next. In an explicit character constant (which is surrounded by single quotes, as in _'John'_), the backslash is not required before a double quote ", but it is required before a single quote ', as in these two constants:




You can use the caret ^ to specify ASCII control characters, for example:



The caret specifies that the top three bits of the character are set to zero. For any character _c_, the following is true:



However if _c _is the question mark, as in '^?', the bits are not turned off.
Explicit string constants cannot cross line boundaries. To represent a string that is longer than a line, break it into two or more strings on separate lines and use catenation (+) to join the individual strings.
An explicit string constant can contain at most 255 characters (this is in implementation constraint).
String values are not allowed to contain characters with the code values of 0 or 128; these character values are called _eos _(end of string) and _uninitchar_ (uninitialized character). These are reserved by the implementation to mark the end of a string value and to see if a string variable has been initialized.


