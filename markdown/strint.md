
#strint

##Syntax
**strint** ( *s* : **string** [ , *base* : **int** ] ) : **int**

##Description
The **strint** function is used to convert a string to an integer. The integer is equivalent to string *s*. The number *base *parameter* *is optional, for example, **strint** ("47") = 47. In Turing proper, the *base* is not allowed and is assumed to be 10.
String *s* must consist of a possibly null sequence of blanks, then an optional plus or minus sign, and finally a sequence of one or more digits. For number bases larger than 10, the digits can include a, b, c  (alternately A, B, C ) which represent the digit values 10, 11, 12  The *base*, if given, must be in the range 2 to 36 (36 because there are 10 base ten digits and 26 letters). For example, **strint **("FF", 16) = 255.
The **intstr** function is the inverse of **strint**, so for any integer *i*, 
        strint ( intstr ( i ) ) = i.
##See also
**[chr.html](chr)**, **[ord.html](ord)**, **[intstr.html](intstr)** and **[strnat.html](strnat)** functions.
