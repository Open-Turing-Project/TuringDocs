
#paramDeclaration

##Syntax
A _paramDeclaration_ is one of:


(a) [ **var** ] _id_ {, _id_ } : _typeSpec_
(b) _subprogramHeader_



##Description
A parameter declaration, which is part of the header of a procedure or function, specifies a formal parameter (see also **procedure** and **function** declarations). Form (a) above is the most common case. Form (b) specifies procedures and functions that are themselves passed as parameters.


##Example


        procedure putTitle ( title : string )
            % The parameter declaration is: title : string
            put title
        end putTitle
        
        procedure x (var s : array 1 .. * of string (*))
            % Set each element of s to the null string
            for i : 1 .. upper ( s )
                s ( i ) := ""
            end for
        end x
##Details
Parameters to a procedure may be declared using **var**, which means that the parameter can be changed inside the procedure. For example, _s_ is changed in the _x_ procedure. If a parameter is declared without **var**, it cannot be changed. (This differs from Pascal, where non-**var** parameters can be changed.)  Parameters to functions cannot be declared to be **var**.

Parameters declared **var** are passed by reference, which means that a pointer to the value is passed to the procedure, rather than passing the actual value. This implies that in the call _p_ ( _a_ (_i_)), in which array element _a_(_i_) is passed to procedure _p_, a change to _i_ in _p_ does not change the element referred to by _p_'s actual parameter. Every non-scalar (not integer, subrange, real, boolean, enumerated, pointer or the **char** type) parameter is passed by reference whether or not it is declared **var**. In all other cases (scalar non-**var** parameters) the parameter is passed by value (the actual value is copied to the procedure).

The upper bound of an array or string that is a formal parameter may be specified as an asterisk (__*__), as is done above for parameter _s_ in procedure _x_. This specifies that  the size of the upper bound is inherited from the corresponding actual parameter. Parameters declared using star are called _dynamic_ parameters.

The names of the formal parameters must be distinct from each other, from the procedure or function name, and from pervasive identifiers. However, they need not be distinct from names outside of the procedure or function.


##Example
Find the zero of function f. This example illustrates form (b), which is a parameter that is a function. See also _subprogramHeader_.

        function findZero ( function f ( x : real) : real,
                        left, right, accuracy : real ) : real
            pre sign ( f ( left ) ) not= sign ( f ( right)) )
                    and accuracy > 0
            var L : real := left
            var R : real := right
            var M : real
            const signLeft := sign ( f ( left ) )
            loop
                M := ( R + L) / 2
                exit when abs ( R - L ) <= accuracy
                if signLeft =sign ( f ( M ) ) then
                    L := M
                else
                    R := M
                end if
            end loop
            result M
        end findZero
##Details
Form (b) of _paramDeclaration_ is used to specify formal parameters that are themselves procedures or functions. For example, in the _findZero_ function, _f_ is a formal parameter that is itself a function. The subprogram type can be used to replace form (b). In particular, the header to the _findZero_ function can be replaced by the following with no change in the action. The names _g_ and _x_ serve no purpose, except as place holders in the declaration of _f_.

        function findZero ( f : function g ( x : real) : real,
                        left, right, accuracy : real ) : real
##Details
Parameters that are declared non **var** should, in principle, be constant. Unfortunately, there is an anomalous situation in which these can change. This occurs when the parameter is passed by reference, because it is a non scalar such as a string. If the actual parameter is changed while the subprogram is executing, the formal parameter will change as well.

You can also optionally use the **register** keyword to request that the variable be placed in a machine register. This changes form (a) to allow the optional use of the **register** keyword. The syntax for form (a) is actually:

In the current (1999) implementation, programs are run interpretively using pseudo-code, which has no machine registers, and the **register** keyword is ignored. See **register** for restrictions on the use of register parameters.

The optional keyword **cheat** means that the parameter has a type cheat. See **cheat**. Any variable or constant non scalar (in other words, items passed by reference) can be passed to a type cheat parameter. The internal representation will be interpreted as a value of the specified type. This is dangerous as it provides unconstrained access to the underlying computer memory.

        [ var ] [ register ] id {, id } : [ cheat ] typeSpec
##Example
This procedure outputs the values of _n_ bytes starting at the address of formal parameter _a_, using a parameter type cheat.

        procedure dump (a : cheat array 0 .. 10000 of nat1, n : int )
            for i : 0 .. n - 1
                put i, a ( i ) : 4
            end for
        end dump
        
        var s : string := "abc"
        dump ( s, 5 )       % Dumps 5 bytes, starting with "abc"
