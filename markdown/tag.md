
# tag

## Syntax
A _tagStatement_ is:   
**tag** _unionVariableReference_ , _expn_

## Description
A **tag** statement is a special-purpose assignment that is used for changing the tag of a **union** variable.


## Example
In this example, the tag field of **union** variable _v_ is set to be _passenger_, thereby activating the _passenger_ field of _v_.

        type vehicleInfo :
            union kind : passenger .. recreational
                label passenger :
                    cylinders : 1..16
                label farm :
                    farmClass : string ( 10 )
                label : % No fields for "otherwise" clause
            end union
        var v : vehicleInfo
        
        tag v, passenger        % Activate passenger part
## Details
A **tag** statement is the only way to modify the tag field of a **union** variable (other than by assigning an entire union value to the union variable).

You cannot  access a particular set of fields of a **union** unless the tag is set to match the corresponding label value.


## See also
**[union](union.html)** types.

                        
