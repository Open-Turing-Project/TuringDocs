
#record

##Syntax
A *recordType* is:
 **record**  *id* {, *id* } : *typeSpec*  { *id* {, *id* } : *typeSpec* } **end** **record**



##Description
Each value of a record type consists of fields, one field for each name (*id*) declared inside the record. In the following example, the fields are *name*,* phoneNumber* and *address*.



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
In a record, *id'*s of fields must be distinct. However, these need not be distinct from identifiers outside the record. Records can be assigned as a whole (to records of an equivalent type), but they cannot be compared. A semicolon can optionally follow each *typeSpec*.
Any array contained in a record must have bounds that are known at compile time.
The notation > can be used to access record fields. For example, if *p* is a pointer to *phoneRecord*, *p*>*name* locates the *name* field. See **pointer**.


