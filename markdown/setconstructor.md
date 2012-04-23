
#setConstructor

##Syntax
A _setConstructor_ is:


_setTypeId_ ( _membersOfSet_ )



##Description
Each value of a **set** type consists of a set of elements. In classical mathematics, the set consisting of 0 and 1 is written as {0,1}. This is written in Turing using a _set constructor_ consisting of the name of the set type (_setTypeId_) followed by a parenthesized list of elements.


##Example
The _smallSet_ type is declared so that it can contain any and all of the values 0, 1 and 2. Variable _s_ is initialized to be the set containing 1 and 2. The set {0,1} is written in this Turing example as _smallInt_ (0,1).

        type smallSet : set of 0 .. 2
        var s : smallSet := smallSet ( 0, 1 )
        
        if 2 in s then 
##Details
The form of _membersOfSet_ is one of:

The empty set is written, for example, as _smallInt_ (). The full set is written as _smallInt_ (**all**), so _smallInt_ (**all**) = _smallInt_ (0,1,2). See also the **set** type.

The syntax of _setConstructor_ as given above has been simplified by ignoring the fact that **set** types can be exported from modules. When a **set** type is exported and used outside of a module, you must write the module name, a dot and then the type name. For example, the set constructor above would be written as _m.smallSet_(1,2), where _m_ is the module name.

        (a) expn { , expn}  % List of members of set
        (b) all         % All member of index type of set
        (c)             % Nothing, meaning the empty set
