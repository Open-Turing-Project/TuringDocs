
#get

##Syntax
A *getStatement* is:
 **get** [ : *streamNumber* , ] *getItem* { , *getItem* }



##Description
The **get** statement inputs each of the *getItems*. Ordinarily, the output comes from the keyboard. However, if the *streamNumber *is present, the input comes from the file specified by the stream number (see the **open** statement for details). Also, input can be redirected so it is taken from a file rather than the keyboard. Check the documentation on the environment for instructions on doing so.
The syntax of a *getItem* is one of:
These items are used to support three kinds of input:
(1) token and character oriented input: supported by forms (a) and (b),
(2) line oriented input: supported by form (c), and
(3) character oriented input: supported by form (d).
Examples of these will be given, followed by detailed explanations.


        (a) variableReference
        (b) skip
        (c) variableReference : *
        (d) variableReference : widthExpn
##Example
Token-oriented input.


        var name, title : string
        var weight : real
        get name        % If input is Alice, it is input into name
        get title       % If input is "A lady", A lady is input
        var weight      % If input is 9.62, it is input into weight
##Example
Line-oriented input.


        var query : string
        get query : *   % Entire line is input into query
##Example
Character-oriented input.


        var code : string
        get code : 2        % Next 2 characters are input into code.
##Details
A *token* is a sequence of characters surrounded by *white space*, where *white space *is defined as the characters: blank, tab, form feed, new line, and carriage return as well as end-of-file. The sequence of characters making up the token are either all non-white space or else the token must be a quoted string (an explicit string constant). When the *variableReference* in form (a) is a string, integer, real, **int***n*, **nat***n*, or **real***n*. Turing* *skips white space, reads a token into the *variableReference*, and then skips white space (stopping at the beginning of the next line). 
If the *variableReference* is a string, the token is assigned to the variable (if the token is quoted, the quotation marks are first removed). See the examples involving *name *and *title* above. If the *variableReference* is an integer or a real, the token is converted to be numeric before being assigned to the variable. See the example involving *weight* above.
When the input is coming from the keyboard, no input is done until Return is typed. The line that is input may contain more than one token. Any tokens that are not input by one **get** statement will remain to be input by the next **get** statement.
Turing has been modified so that token-oriented input now also skips white space following the token, but does not skip beyond the beginning of the next line. This change implies that  form (b) is usually not needed, as **skip** was used to skip white space after the token.
Form (a) supports **char** and **char**(*n*). If the type is **char**, exactly one character is read, with no skipping of white space before or after. This character may be, for example, a blank or a carriage return. If the type is **char**(*n*), exactly *n* characters are read, with no skipping of white space.



##Example
Inputting **char** and **char**(*n*) types using form (a). The statement *get c:1* is not legal, because length specification is not allowed with character variables.


        var c : char
        var d : char ( 3 )
        get c           % Read one character.
        get d           % Read three characters
##Details
Form (a) supports enumerated types. If the type is an enumerated type, then the token read in must be one of the elements of the enumerated type.



##Example
Inputting an enumerated type using form (a). The statement *get c:1* is not legal, because length specification is not allowed with enumerated variables.


        type colors : enum (red, blue, green)
        var c : colors
        get c           % Read one of red, green or blue
##Details
Form (a) supports **boolean**. If the type is an **boolean** type, then the token read in must be one of "true" or "false"



##Example
Inputting a **boolean** type using form (a). The statement *get c:1* is not legal, because length specification is not allowed with **boolean** variable.


        var tf : boolean
        get tf          % Read one of true or false
##Details
In form (b) of *getItem*, **skip** causes white space in the input to be skipped until non-white space (a token) or the end-of-file is reached. This is used when the program needs to determine if there are more tokens to be input. To determine if there are more tokens to be read, the program should first **skip** over any possible white space (such as a final new line character) and then test to see if **eof** (end-of-file) is true. This is illustrated in this example:



##Example
Using token-oriented input, input and then output all tokens. This example gives what used to be the standard way of reading tokens up to end of file. With the new meaning of form (a) for reading tokens, the **get** **skip** line can be omitted. This omission is possible because the line **get*** word* now automatically skips white space following the input value, up to the beginning of the next line.
In the above and the next example, if the input has been redirected so that it is from a file, **eof** becomes true exactly when there are no more characters to be read. If the input is coming from the keyboard, you can signal **eof** by typing control-Z (on a PC) or control-D (on UNIX).


        var word : string
        loop
            get skip        % Skip over any white space
            exit when eof   % Are there more characters?
            get word        % Input next token
            put word        % Output the token
        end loop
##Details
In form (c) of *getItem*, the *variableReference *is followed by :***** which implies line-oriented input. This form causes the entire line (or the remainder of the current line) to be read. In this case the variable must be a string (not an integer or real). The new line character at the end of the line is discarded. It is an error to try to read another line when you are already at the end of the file. The following example shows how to use line-oriented input to read all lines in the input.



##Example
Using line-oriented input, input and then output all lines.


        var line : string
        loop
            exit when eof   % Are there more characters?
            get line : *    % Read entire line
            put line
        end loop
##Details
In form (d) of *getItem*, the *variableReference *is followed by
which specifies character-oriented input. This form causes the specified number (*widthExpn*) of characters to be input (or all of the remaining characters if not enough are left). If no characters remain, the null string is read and no warning is given. In this form, the new line character is actually input into the *variableReference *(this differs from line-oriented input which discards new line characters). The following example shows how to use character-oriented input to read each character of the input. Form (d) can be used with **string** and **char**(*n*) variables, but not with **char**, **int** or any other type.


        : widthExpn 
##Example
Using character-oriented input, input and then output all characters.


        var ch : string ( 1 )
        loop
            exit when eof   % Are there more characters?
            get ch : 1      % Read one character
            put ch ..       % Output the character, which
                        % may be a new line character
        end loop
##Example
Using character-oriented input, input two characters.


        var d : char ( 3 ) := 'abc'
        get d : 2           % Read two character (replace 'ab')
##See also
**[read.html](read)** [statement.html](statement), which provides binary file input.


