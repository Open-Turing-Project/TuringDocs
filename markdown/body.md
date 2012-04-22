
#body

##Syntax
A _bodyDeclaration_ is one of:

(a)**body** **procedure** _procedureId_
_statementsAndDeclarations_
**end** _procedureId_
(b)**body** **function** _functionId_
_statementsAndDeclarations_
**end** _functionId_
(c)**body procedure** _id_ [(_paramDeclaration_
{, _paramDeclaration_ })]
_statementsAndDeclarations_
**end** _id_
(d)**body function** _id_ [ ( [_paramDeclaration_ {,
_paramDeclaration_ } ]) ] : _typeSpec_
_statementsAndDeclarations_
**end** _id_




##Description
A body declaration is used to resolve either a forward subprogram or a deferred subprogram.
You declare a procedure or function **forward** when you want to define its header but not its body. This is the case when one procedure or function calls another, which in turn calls the first. This situation is called _mutual recursion_. The use of **forward** is necessary in this case because every item must be declared before it can be used. The **forward** declaration must be followed by  a **body** declaration for the same procedure or function. For details, see **forward** declarations.
When a procedure or function in a class is declared to be **deferred** (or simply exported from the class), it can be resolved or _overridden_ afterward by giving its body further down in that class or in descendant classes. The overriding procedure must use the keyword **body**. See **class** or "**implement** **by**" for examples.



##Details
You can specify the parameter and return values of the subprogram in the **body** declaration. However, the names and types of the parameters and return values must match the initial declaration exactly, or a warning results and the parameter list and return values from the **body** declaration are ignored.



##Example
The example given here is part of a complete Turing program that includes an explanation of **forward** declarations.


        var token : string
        forward procedure expn (var eValue : real)
            import forward term, var token
         other declarations appear here 
        body procedure expn
            var nextValue : real
            term (eValue)               % Evaluate t
            loop                        % Evaluate { + t}
                exit when token not= "+"
                get token
                term (nextValue)
                eValue := eValue + nextValue
            end loop
        end expn
##Details
The syntax of a _bodyDeclaration_ presented above has been simplified by omitting the optional result identifier, **import** list, **pre** and **post** condition and **init** clause. See **procedure** and **function** declarations for descriptions of these omissions.
The "function" or "procedure" token in the declaration is now optional. In other words the following code fragment is legal


        forward procedure p
        
        body  p
        
        end p
##See also
**[class.html](class)**, **[forward.html](forward)** and **[implement_by.html](implement by)**


