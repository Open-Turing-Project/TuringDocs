
#variableReference

##Syntax
A _variableReference_ is:

_variableId_ { _componentSelector_ }




##Description
In a Turing program, a variable is declared and given a name (_variableId_) and then used. Each use is called a _variable reference_.
If the variable is an array, collection, record or union, its parts (_components_) can be selected using subscripts and field names (using _componentSelectors_). The form of a _componentSelector _is one of:\




Form (a) is used for subscripting (indexing) arrays and collections. The number of array subscripts must be the same as in the array's declaration. A collection has exactly one subscript, which must be a pointer to the collection. Form (b) is used for selecting a field of a record or union.



##Example
Following the declarations of _k_,_ a _and _r_, each of _k_,_ a _(_k_) and _r_._name _are variable references.


        var k : int
        var a : array 1 .. 100 of real
        var r :
            record
                name : string ( 20 )
                phone : string ( 8 )
            end record
        
        k := 5
        a ( k ) := 3.14159
        r . name := "Steve Cook"
##Details
A variable reference can contain more than one component selector, for example, when the variable is an array of records. For an example, see the **record** type. See also _constantReference_ and **var** declaration.


