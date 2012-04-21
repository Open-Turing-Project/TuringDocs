
#explicitTrueFalseConstant

##Syntax
An *explicitTrueFalseConstant* is one of:
 (a)**true** (b)**false**

##Example
The following determines if string *s* contains a period. After the **for** statement, *found* will be **true** if there is a period in *s*.
        var found : boolean := false
        for i : 1 .. length (s)
            if s = "." then
                found := true
            end if
        end for
##Details
**true**/**false** values are called *boolean *values. A **boolean** variable, such as *found* in the above example, can have a value of either **true** or **false**. 

##See also
**[boolean.html](boolean)** type.
