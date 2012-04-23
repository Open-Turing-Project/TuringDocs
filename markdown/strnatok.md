
# strnatok

## Syntax
**strnatok** ( _s_ : **string** [ , _base_ : **int** ] ) : **boolean**

## Description
The **strnatok** function is used determine whether the **strnat** function can be used to convert the string to a natural number without causing an error. If the string can be successfully converted, then **strnatok** returns **true**, otherwise it returns **false**.

String _s_ should consist of a possibly null sequence of blanks, then an optional plus sign, and finally a sequence of one or more digits. For number bases larger than 10, the digits can include a, b, c &#133; (alternately A, B, C &#133;) which represent the digit values 10, 11, 12 &#133; If _s_ is correctly constructed, then **strnatok** will return **true**, otherwise it returns **false**. The _base_, if given, must be in the range 2 to 36 (36 because there are 10 base ten digits and 26 letters). For example, **strnatok** ("FF", 16) = **true**. 


## See also
**[strnat](strnat.html)** function that does the actual conversion.

