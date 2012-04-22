
#record

##Syntax
A _recordType_ is:

**record**
_id_ {, _id_ } : _typeSpec_
{ _id_ {, _id_ } : _typeSpec_ }
**end** **record**




##Description
Each value of a record type consists of fields, one field for each name (_id_) declared inside the record. In the following example, the fields are _name_, _phoneNumber_ and _address_.



##Example



        type phoneRecord :
            record
                name : string ( 20 )
                phoneNumber : int
                address : string ( 50 )
            end record
        
        var oneEntry : phoneRecord
        var phoneBook : array 1 .. 100 of phoneRecord
        var i : int
        oneEntry .name := "Turing, Alan"
        
        phoneBook ( i ) := oneEntry % Assign whole record
##Details
In a record, _id'_s of fields must be distinct. However, these need not be distinct from identifiers outside the record. Records can be assigned as a whole (to records of an equivalent type), but they cannot be compared. A semicolon can optionally follow each _typeSpec_.
Any array contained in a record must have bounds that are known at compile time.
The notation > can be used to access record fields. For example, if _p_ is a pointer to _phoneRecord_, _p_>_name_ locates the _name_ field. See **pointer**.


