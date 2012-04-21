
#upper

##Syntax
**upper** ( *reference* [ , *dimension* ] ) : **int**

##Description
The **upper** attribute is used to find the upper bound of an array, string, **char**(*n*) or non-opaque subrange type. (See **lower** for finding the lower bound.)

##Example
In a procedure, see if the bound of array parameter *a* is large enough that  it can be subscripted by *i*. If it is large enough, it is set *a*(*i*) to zero.
        procedure test ( var a : array 1 .. * of real )
            if i <= upper ( a ) then
                a ( i ) := 0.0
            end if
        end test
##Details
In a similar way, if *s* is a string, its upper bound (not length!) is given by **upper** (*s*). If an array has more than one dimension, as in **var** *b* : **array** 1..10, 1 .. 60 **of** **int**, you must specify the dimension. For example, **upper** (*b*, 2) returns 60.
