
# put

## Syntax
A _putStatement_ is:   **put** [ : _fileNumber_ , ] _putItem_ { , _putItem_ } [ .. ]

## Description
The **put** statement outputs each of the _putItems_. Usually, a new line is started in the output after the final _putItem_. If the optional dot-dot (..) is present, though, subsequent output will be continued on the current output line. With character graphics, the omission of dot-dot causes the remainder of the output line to be cleared to blanks.

Ordinarily, the output goes to the screen. However, if the _fileNumber_ is present, the output goes to the file specified by the file number (see the **open** statement for details). Also, output can be redirected from the screen to a file, in which case all **put** statements without a file number are sent to the file instead of the screen.


## Example


            var n : int := 5
            put "Alice owes me $", n
                    % Output is: Alice owes me $5
                    % Note that no extra space is
                    % output before an integer such as n.
## Example


        Statement           Output      Notes
        
        put 24          24
        put 1/10            0.1     % Trailing zeros omitted
        put 100/10          10      % Decimal point omitted
        put 5/3         1.666667    % 6 fraction digits
        put sqrt (2)            1.414214    % 6 fraction digits
        put 4.86 * 10**9        4.86e9  % Exponent for = 1e6
        put 121 : 5         bb121   % Width 5; b is blank
        put 1.37 : 6 : 3        b1.370  % Fraction width of 3
        put 1.37 : 11 : 3 : 2   bb1.370e+00% Exponent width of 2
        put "Say \"Hello\"" Say "Hello"
        put "XX" : 4, "Y"       XXbbY   % Blank shown as b
        put true and false  false       % Put out a boolean value
        put 1 < 2           true        % Put out a boolean value
## Example
A single blank line is output this way:

This **put** statement is sometimes used to close off a line that has been output piece by piece using **put** with dot-dot.

        put ""  % Output null string then new line
## Details
The general form of a _putItem_ is one of:


-    _expn_ [:_widthExpn_ [:_fractionWidth_ [:_exponentWidth_ ] ] ]  
-     **skip**  


See the above examples for uses of _widthExpn_, _fractionWidth_ and _exponentWidth_. For the exact meaning of these three widths, see the definitions of the functions _realstr_, _frealstr_ and _erealstr_. The **skip** item is used to end the current output line and start a new line.


## Details
The **put** semantics allow put's of enum values. The values printed are the element names themselves, case sensitive. For example:

        type colors : enum ( red, green, blue )
        var c : colors := colors . red
        put c       % outputs "red" (without the quotes)
## Details
The **put** semantics allow put's of **boolean** values. The values printed are either &#147;true&#148; or &#147;false&#148; (without the quotes). For example:

        var c : boolean := true or false
        put c       % outputs "true" (without the quotes)
