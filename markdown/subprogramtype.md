
#subprogramType

##Syntax
A _subprogramType_ is:


_subprogramHeader_



##Description
A variable or constant can contain a reference to a subprogram. The type of the variable or constant is a _subprogramType_. See also _subprogramHeader_.


##Example
In the following _t_ is a subprogram type, and _u_ is a variable of type _t_ initialized to refer to procedure _rnd_.

        procedure rnd ( var i : int, x : real)
            i := round ( x )
        end rnd
        
        type t : procedure q ( var j : int, y : real )
        var u : t := rnd    % Procedure variable u refers to rnd
        
        var j : int
        u ( j, 24.6 )       % Call procedure u referring to rnd
        
        var v := u      % Subprogram variable v initialized to u
##Details
The name of the subprogram, for example _q_, and the parameters, for example _i_ and _x_, have no meaning in a subprogram type. They are present only because of the form of subprogram headers.

If _v_ is a variable or constant that refers to a subprogram, _v_ can be called, compared for equality to other subprogram variables, assigned and passed as a parameter. Variable _v_ is not an integer, string or pointer and cannot participate in their corresponding operations.

A reference to a subprogram, rather that the code of the subprogram, is contained in a variable _v_ whose type is a subprogram type. This implies that **addr** (_v_) is the address of the reference to subprogram, rather than the address of the subprogram. The address of the code is given by #_v_. See **cheat** for an explanation of the # operator.

You cannot assign a reference to a subprogram exported from a class. This restriction exists because  these subprograms are meaningless without an accompanying reference to an object.

Many potential uses of subprogram variables are better programmed using classes and overriding exported subprograms. See **class**.

