
#catenation (+)

##Syntax
A *catenation *is:
 *stringExpn* **+** *stringExpn*



##Description
Two strings (*stringExpns*), **char** or **char**(*n*) values can be joined together (catenated) using the + operator. 



##Example



        var lastName, wholeName : string
        lastName := "Austere"
        wholeName := "Nancy" + "  " + lastName
                % The three strings Nancy, a blank and Austere
                % catenated together to make the string
                % "Nancy  Austere". This string becomes the
                % value of wholeName
##Details
The length of a string catenation is limited to 255 characters.
Catenation is sometimes called *concatenation*.
Catenation can also be applied to **char** and **char**(*n*) values. See **char** and **char**(*n*). If either operand, *s* or *t* in *s* + *t*, is a **string** or a dynamic **char**(*n*) (length not known at compile time), the result type is **string**. Otherwise (when both *s* and *t* are **char** or non-dynamic **char**(*n*)) the result type is **char**(*n*).
The result of catenation is considered to be a compile time value if both operands are compile time values.
If both operands have the type **char** or **char**(*n*) neither of which is a dynamic **char**(*n*), the result is of type **char**(*n*), which is also of a non dynamic type. This allows the creation of very long **char**(*n*) values that can effectively span line boundaries using catenation to join lines. If either operand is a dynamic type or a string type, the catenation produces a string, whose length is limited to 255 characters.



##See also
*substrings* (for separating a strings into parts), **[repeat.html](repeat)*** *(for making repeated catenations), **[string1.html](string)*** *type, **[length.html](length)**, and **[index.html](index)** (to determine where one string is located inside another).
See also **[string1.html](string)**, **[char.html](char)**, **[char.html](char)**(*n*), *[explicitstringconstant.html](explicitStringConstant),* *[explicitcharconstant.html](explicitCharConstant),* [substring.html](substring) and **[length.html](length)**.


