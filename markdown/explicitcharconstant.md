
#explicitCharConstant

##Syntax
An *explicitCharConstant* is a sequence of characters surrounded by single quotation marks, for example, 'Renzo'.

##Example
In the following, the explicit character constants are 'H' and 'Hi'.
        var c : char := 'H'
        var d : char (2) := 'Hi'
##Details
An explicit character constant must contain at least one character. If it contains exactly one character, as in 'A', its type is **char**. If it contains two or more characters (*n* characters), as 'Width', its type is **char**(*n*). The difference between the **char** and **char**(1) types is rarely of significance, but does make a difference in declarations without an explicit type, for example:
The backslash \ is used in explicit string and char(n) constants to specify special values, for example, '\T' is the tab character. Similarly, the carat ^ is used to specify ASCII control characters, for example, '^H' is the ASCII backspace. See *explicitStringConstants* for details.
Explicit character constants cannot cross line boundaries. To represent a constant that is longer than a line, break it into two or more strings on separate lines and use + (catenation) to join the individual strings. See **catenation**.
An explicit character constant may be limited in length by the implementation. We recommend that this limitation be at least 32767.
Explicit character constants, but not strings, are allowed to contain the character internal values 0 (called *eos *for end of string) and 128 (called *uninitchar*, used as the uninitialized string value).
        var c := 'H'        % Type is char
        var d := 'Hi'   % Type is char (2)
        var e := "H"    % Type is string
