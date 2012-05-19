
# equivalence

## Description
Two types are _equivalent_ to each other if they are essentially the same types (the exact rules are given below). When a variable is passed to a **var** formal parameter, the types of the variable and the formal parameter must be equivalent because they are effectively the same variable. When an expression is assigned to a variable, their types must be equivalent, except for special cases. For example, Turing allows you to assign an integer expression to a **real** variable (see _assignability_ for details).


## Example


        var j : int
        
        var b : array 1 .. 25 of string
        
        type personType :
            record
                age : int
                name : string (20)
            end record
        
        procedure p (var i : int, var a : array 1 .. 25 of string,
                    var r : personType)
         body of procedure p, which modifies each of i, a and r 
        end p
        
        var s : personType
        p (j, b, s)     % Procedure call to p
                    % i and j have the equivalent type int
                    % Arrays a and b have equivalent types
                    % Records r and s have equivalent types
## Details
Two types are defined to be _equivalent_ if they are:


-    the same standard type (**int**, **real**, **boolean** or **string**),  
-    subranges with equal first and last values,  
-    arrays with equivalent index types and equivalent component types,  
-    strings with equal maximum lengths,  
-    sets with equivalent base types, or  
-     pointers to the same collection; in addition,  
-    a declared type identifier is also equivalent to the type it names (and to the type named by that type, if that type is a named type, etc.)  
-    both **char**,  
-    both **char**(_n_) with the same length,  
-    both procedure types, with corresponding equivalent parameter types and corresponding **var** or non-**var** of the parameters,  
-    both function types, with corresponding equivalent parameter types and corresponding **var** or non-**var** of the parameters and equivalent result types,  
-    both pointer types to the same class or equivalent type and both are checked or unchecked.  


Each separate instance of a record, union or enumerated type (written out using one of the keywords **record**, **union** or **enum**) creates a distinct type, equivalent to no other type. By contrast, separate instances of arrays, strings, subranges and sets are considered equivalent if their parts are equal and equivalent.

Opaque type _T_, exported from a module, monitor or class _M_ as **opaque**, is a special case of equivalence. Outside of _M_ this type is written _M_._T_, and is considered to be distinct from all other types. By contrast, if type _U_ is exported non-**opaque**, the usual rules of equivalence apply. The parameter or result type of an exported procedure or function or an exported constant is considered to have type _M_._T_ outside of _M_ if the item is declared using the type identifier _T_. Outside of _M_, the **opaque** type can be assigned, but not compared.

It is not required that subprogram types have the same names and parameter names to be equivalent. They also do not require the same factoring of parameters across their types, as in _i_, _j:_ **int** instead of _i:_ **int**, _j:_ **int**.

