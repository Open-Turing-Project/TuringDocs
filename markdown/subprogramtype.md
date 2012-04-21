
#subprogramType

##Syntax
A *subprogramType* is:
 *subprogramHeader*

##Description
A variable or constant can contain a reference to a subprogram. The type of the variable or constant is a *subprogramType*. See also *subprogramHeader*.

##Example
In the following *t* is a subprogram type, and *u* is a variable of type *t* initialized to refer to procedure *rnd*.
        procedure rnd ( var i : int, x : real)
            i := round ( x )
        end rnd
        
        type t : procedure q ( var j : int, y : real )
        var u : t := rnd    % Procedure variable u refers to rnd
        
        var j : int
        u ( j, 24.6 )       % Call procedure u referring to rnd
        
        var v := u      % Subprogram variable v initialized to u
##Details
The name of the subprogram, for example *q*, and the parameters, for example *i* and *x*, have no meaning in a subprogram type. They are present only because of the form of subprogram headers.
If *v* is a variable or constant that refers to a subprogram, *v *can be called, compared for equality to other subprogram variables, assigned and passed as a parameter. Variable *v* is not an integer, string or pointer and cannot participate in their corresponding operations.
A reference to a subprogram, rather that the code of the subprogram, is contained in a variable *v* whose type is a subprogram type. This implies that **addr** (*v*) is the address of the reference to subprogram, rather than the address of the subprogram. The address of the code is given by #*v*. See **cheat** for an explanation of the # operator.
You cannot assign a reference to a subprogram exported from a class. This restriction exists because  these subprograms are meaningless without an accompanying reference to an object.
Many potential uses of subprogram variables are better programmed using classes and overriding exported subprograms. See **class**.
