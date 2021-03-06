
# substring

## Syntax
A _substring_ is one of:   

-  _stringReference_ ( _leftPosition_ .. _rightPosition_ )
-  _stringReference_ ( _charPosition_ )

## Description
A substring selects a part of another string. In form -  the substring starts at the left position and runs to the right position. In form - , the substring is only a single character. Turing support substrings of **char**(_n_) values.


## Example


        var word : string := "bring"
        put word (2 .. 4)       % Outputs rin
        put word (3)        % Outputs i
        put word (2 .. *)       % Outputs ring; the star (*) means
                        % the end of the string.
        put word (* - 2 .. * - 1 )  % Outputs in
## Details
The leftmost possible position in a string is numbered 1. The last position in a string can be written as an asterisk (*). For example, _word_ (2 .. *) is equivalent to _word_ (2 .. _length_(_word_)).

Each of _leftPosition_, _rightPosition_, and _charPosition_ must have one of these forms:


-  _expn_  
-  __*__  
-  __*__ **-** _expn_  


The exact rules for the allowed values of _leftPosition_ and _rightPosition_ are:


-  _leftPosition_ must be at least 1,  
-  _rightPosition_ must be at most _length_ (_stringReference_), and  
-  the length of the selected substring must zero or more.  


This specifically allows null substrings such as _word_ (1, 0) in which _rightPosition_ is 0 and _word_ (6, 5) in which _leftPosition_ is one more that **length** (_stringReference_).

Note that substrings are not assignable. For example, if _s_ is a string, the statement _s_ -  := "a" is illegal in Turing.

Turing supports substrings of **char**(_n_) values. See **char**(_n_). If a substring of **char**(_n_) value _t_ has two operands, as in _t_(2..77), the result type of this operation is a **string**. If the substring has one operand, as in _t_- , this becomes, in effect,  a subscript into an array of characters. The result is a reference to a **char**, which can be assigned to or passed to a **var** parameter.


## See also
**[string](string1.html)**, **[char](char.html)**, **[char](char.html)**(_n_), _[explicitStringConstant](explicitstringconstant.html)_, _[explicitCharConstant](explicitcharconstant.html)_, catenation and **[length](length.html)**.

                        
