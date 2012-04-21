
#repeat

##Syntax
**repeat** ( *s* : **string**, *i* : **int** ) : **string**

##Description
The **repeat** function returns *i *copies of string *s *catenated together. For example, **repeat** ("X", 4) is *XXXX*.

##Example
This program outputs *HoHoHo*.
        var word : string := "Ho"
        put repeat ( word, 3 )
##Details
If *i* is less than or equal to zero, the null string "" is returned. The **repeat** function is often used for spacing of output. For example, this statement skips 20 blanks before outputting *x*.
        put repeat (" ", 20), x
