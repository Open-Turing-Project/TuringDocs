
#repeat

##Syntax
**repeat** ( _s_ : **string**, _i_ : **int** ) : **string**



##Description
The **repeat** function returns _i_ copies of string _s_ catenated together. For example, **repeat** ("X", 4) is _XXXX_.



##Example
This program outputs _HoHoHo_.


        var word : string := "Ho"
        put repeat ( word, 3 )
##Details
If _i_ is less than or equal to zero, the null string "" is returned. The **repeat** function is often used for spacing of output. For example, this statement skips 20 blanks before outputting _x_.


        put repeat (" ", 20), x
