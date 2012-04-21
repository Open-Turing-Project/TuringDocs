
#strnat

##Syntax
**strnat** ( *s* : **string** [ , *base* : **int** ] ) : **nat**



##Description
The **strnat** function is used to convert a string to a natural number. The natural number is equivalent to string *s*. The number *base *parameter* *is optional, for example, **strnat**("47") = 47.
String *s* must consist of a possibly null sequence of blanks, then an optional plus sign, and finally a sequence of one or more digits. For number bases larger than 10, the digits can include a, b, c  (alternately A, B, C ) which represent the digit values 10, 11, 12  The *base*, if given, must be in the range 2 to 36 (36 because there are 10 base ten digits and 26 letters). For example, **strnat**("FF", 16) = 255.
The **natstr** function is the inverse of **strnat**, so for any natural number *n*, **strnat**( **natstr** (*n*)) = *n*.
The **strnat** function is similar to **strint**, except that **strnat** handles values that are larger than **int** values and does not handle negative values.



##See also
the **[chr.html](chr)**, **[ord.html](ord)**, **[intstr.html](intstr)** **[and.html](and)** **[strint.html](strint)** functions.


