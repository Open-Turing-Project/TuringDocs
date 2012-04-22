
#ord

##Syntax
**ord** ( _ch_ : **char** ) : **int**



##Description
The **ord** function accepts an enumerated value, **char**, or a string of length 1, and returns the position of the value in the enumeration, or of the character in the ASCII (or EBCDIC for IBM mainframes) sequence. Values of an enumerated type are numbered left to right starting at zero. For example, **ord** ( "A" ) is 65. The **ord** function is the inverse of **chr**, so for any character_ c_, **chr** ( **ord** (_c_)) = _c_.



##See also
**[chr.html](chr)**, **[intstr.html](intstr)** and **[strint.html](strint)** functions.


