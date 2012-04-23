
#upper

##Syntax
**upper** ( _reference_ [ , _dimension_ ] ) : **int**


##Description
The **upper** attribute is used to find the upper bound of an array, string, **char**(_n_) or non-opaque subrange type. (See **lower** for finding the lower bound.)


##Example
In a procedure, see if the bound of array parameter _a_ is large enough that  it can be subscripted by _i_. If it is large enough, it is set _a_(_i_) to zero.

        procedure test ( var a : array 1 .. * of real )
            if i <= upper ( a ) then
                a ( i ) := 0.0
            end if
        end test
##Details
In a similar way, if _s_ is a string, its upper bound (not length!) is given by **upper** (_s_). If an array has more than one dimension, as in **var** _b_ : **array** 1..10, 1 .. 60 **of** **int**, you must specify the dimension. For example, **upper** (_b_, 2) returns 60.

