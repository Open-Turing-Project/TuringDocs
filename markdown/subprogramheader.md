
#subprogramHeader

##Syntax
A _subprogramHeader_ is one of:

(a)**procedure** [ **pervasive** ] _id_
[ ([ _paramDeclaration_ {, _paramDeclaration_} ])]
(b)**function** [ **pervasive** ] _id_
[ ([ _paramDeclaration_ {, _paramDeclaration_} ])]
[ _id_ ] : _typeSpec_




##Description
A subprogram header is used to describe the interface to a subprogram. Subprogram headers are used within other language features such as subprogram types and external declarations.
Parameterless subprograms may use parentheses (with nothing between them), as is required in the C programming language. These parentheses can be used to disambiguate between the call to the subprogram (parentheses present) and a reference the subprogram (parentheses missing).
Suppose _f_ is a parameterless subprogram declared without parentheses and _g_ is a parameterless subprogram declared with parentheses. Their headers are:
In a program, _f_ and _g_() are calls to these functions, while _g_ is a reference to (not a call to) the procedure. There is no way to write a reference to _f_. When in doubt, use parentheses in the declaration, as in the case for _g_, so that calls always have parentheses and references always do not. A reference to a subprogram can be assigned to a subprogram variable. See subprogram type.


        procedure f
        procedure g ()
##Example
Specify that _t_ is the type of procedure with a **var** integer parameter and a real parameter. See also _subprogramType_.


        type t : procedure q ( var j : int, y : real )
##Details
The keyword **pervasive** can be inserted just after **procedure** or **function**. When this is done, the subprogram is visible inside all subconstructs of the subprogram's scope. Without **pervasive**, the subprogram is not visible inside modules unless explicitly imported. Pervasive subprograms need not be imported. You can abbreviate **pervasive** as an asterisk (__*__).



##See also
**[pervasive.html](pervasive)**.


