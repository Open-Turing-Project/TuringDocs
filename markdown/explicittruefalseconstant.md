
#explicitTrueFalseConstant

##Syntax
An _explicitTrueFalseConstant_ is one of:

(a)**true**
(b)**false**




##Example
The following determines if string _s_ contains a period. After the **for** statement, _found_ will be **true** if there is a period in _s_.


        var found : boolean := false
        for i : 1 .. length (s)
            if s = "." then
                found := true
            end if
        end for
##Details
**true**/**false** values are called _boolean_ values. A **boolean** variable, such as _found_ in the above example, can have a value of either **true** or **false**. 



##See also
**[boolean.html](boolean)** type.


