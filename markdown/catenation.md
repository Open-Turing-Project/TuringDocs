
# catenation (+)

## Syntax
A _catenation_ is:   _stringExpn_ **+** _stringExpn_

## Description
Two strings (_stringExpns_), **char** or **char**(_n_) values can be joined together (catenated) using the + operator. 


## Example


        var lastName, wholeName : string
        lastName := "Austere"
        wholeName := "Nancy" + "  " + lastName
                % The three strings Nancy, a blank and Austere
                % catenated together to make the string
                % "Nancy  Austere". This string becomes the
                % value of wholeName
## Details
The length of a string catenation is limited to 255 characters.

Catenation is sometimes called _concatenation_.

Catenation can also be applied to **char** and **char**(_n_) values. See **char** and **char**(_n_). If either operand, _s_ or _t_ in _s_ + _t_, is a **string** or a dynamic **char**(_n_) (length not known at compile time), the result type is **string**. Otherwise (when both _s_ and _t_ are **char** or non-dynamic **char**(_n_)) the result type is **char**(_n_).

The result of catenation is considered to be a compile time value if both operands are compile time values.

If both operands have the type **char** or **char**(_n_) neither of which is a dynamic **char**(_n_), the result is of type **char**(_n_), which is also of a non dynamic type. This allows the creation of very long **char**(_n_) values that can effectively span line boundaries using catenation to join lines. If either operand is a dynamic type or a string type, the catenation produces a string, whose length is limited to 255 characters.


## See also
_substrings_ (for separating a strings into parts), **[repeat](repeat.html)** (for making repeated catenations), **[string](string1.html)** type, **[length](length.html)**, and **[index](index.html)** (to determine where one string is located inside another).

See also **[string](string1.html)**, **[char](char.html)**, **[char](char.html)**(_n_), _[explicitStringConstant](explicitstringconstant.html),_ _[explicitCharConstant](explicitcharconstant.html),_ [substring](substring.html) and **[length](length.html)**.

