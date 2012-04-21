
#variableReference

##Syntax
A *variableReference* is:
 *variableId* { *componentSelector* }



##Description
In a Turing program, a variable is declared and given a name (*variableId*) and then used. Each use is called a *variable reference*.
If the variable is an array, collection, record or union, its parts (*components*) can be selected using subscripts and field names (using *componentSelectors*). The form of a *componentSelector *is one of:\
 (a) ( *expn* {, *expn*} ) (b) . *fieldId*
Form (a) is used for subscripting (indexing) arrays and collections. The number of array subscripts must be the same as in the array's declaration. A collection has exactly one subscript, which must be a pointer to the collection. Form (b) is used for selecting a field of a record or union.



##Example
Following the declarations of *k*,* a *and *r*, each of *k*,* a *(*k*) and *r*.*name *are variable references.


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
A variable reference can contain more than one component selector, for example, when the variable is an array of records. For an example, see the **record** type. See also *constantReference* and **var** declaration.


