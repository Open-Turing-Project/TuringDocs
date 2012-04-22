
#union

##Syntax
A _unionType_ is:


        union [ id ] : indexType of
            label labelExpn { , labelExpn } :
                        { id {, id } : typeSpec }
            { label labelExpn { , labelExpn } :
                        { id {, id } : typeSpec } }
            [ label :       { id {, id } : typeSpec } ]
        end union
##Description
A union type (also called a variant record) is like a record in which there is a run time choice among sets of accessible fields. This choice is made by the **tag** statement, which deletes the current set of fields and activates a new set.



##Example
This union type keeps track of various information about a vehicle, depending on the kind of vehicle.


        const passenger := 0
        const farm  := 1
        const recreational  := 2
        
        type vehicleInfo :
            union kind : passenger .. recreational of
                label passenger :
                    cylinders : 1..16
                label farm :
                    farmClass :string ( 10 )
                label :     % No fields for "otherwise" clause
            end union
        var v : vehicleInfo
        
        tag v, passenger    % Activate passenger part v.cylinders := 6
##Details
The optional identifier following the keyword **union** is the name of the _tag_ of the union type. If the identifier is omitted, the tag is still considered to exist, although its value cannot be accessed. The tag must be of an index type, for example 1..7. You should limit the range of this index type, as the compiler may have a limit (at least 255) on the maximum range it can handle.
Each _labelExpn_ must be known at compile time and must lie within the range of the tag's type. The fields, including the tag, of a union value are referenced using the dot operator, as in _v.cylinders _and these can be used as variables or constants. A field can be accessed only when the tag matches one of the label expressions corresponding to the field. The tag can be changed by the **tag** statement  but it cannot be assigned to, passed to a **var** parameter, or bound to using **var**.
In a union, _id'_s of fields, including the tag, must be distinct. However, these need not be distinct from identifiers outside the union. Unions can be assigned as a whole (to unions of an equivalent type), but they cannot be compared. A semicolon can optionally follow each _typeSpec_.
Any array contained in a union must have bounds that are known at compile time.
The notation > can be used to access union fields. For example, if _p_ is a pointer to _vehicleRecord_, _p_>_farmClass_ locates the _farmClass_ field.



##See also
**[pointer.html](pointer)**.


