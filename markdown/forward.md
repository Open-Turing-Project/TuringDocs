
#forward

##Syntax
A *forwardDeclaration* is:
 **forward** *subprogramHeader*  [ **import** *importItem* {, *importItem* } ]



##Description
A procedure or function is declared to be **forward** when you want to define its header but not its body. This is the case when one procedure or function calls another, which in turn calls the first; this situation is called *mutual recursion*. The use of **forward** is necessary in this case, because every item must be declared before it can be used.



##Example
This example program evaluates an input expression *e* of the form *t* { + *t *} where t is of the form *p* { * *p *} and *p *is of the form (*e *) or an explicit real expression. For example, the value of 1.5 + 3.0 * (0.5 + 1.5) halt is 7.5.


        var token : string
        
        forward procedure expn ( var eValue : real )
        
        forward procedure term ( var tValue : real )
        
        forward procedure primary ( var pValue: real )
        
        body procedure expn
            var nextValue : real
            term ( eValue )         % Evaluate t
            loop                    % Evaluate { + t}
                exit when token not= "+"
                get token
                term ( nextValue )
                eValue := eValue + nextValue
            end loop
        end expn
        
        body procedure term
            var nextValue : real
            primary (tValue )       % Evaluate p
            loop                    % Evaluate { * p}
                exit when token not= "*"
                get token
                primary ( nextValue )
                tValue := tValue * nextValue
            end loop
        end term
        body procedure primary
            if token = "(" then
                get token
                expn ( pValue )     % Evaluate (e)
                assert token = ")"
            else                    % Evaluate "explicit real"
                pValue := strreal ( token )
            end if
            get token
        end primary
        
        get token               % Start by reading first token
        var answer : real
        expn ( answer )         % Scan and evaluate input expression
        put "Answer is ", answer
##Details
Following a **forward** procedure or function declaration, the **body** of the procedure must be given at the same level (in the same sequence of statements and declarations as the **forward** declaration). This is the only use of the keyword **body**. See also **body**.
Any procedure or function that is declared using **forward** requires an **import** list. In this list, imported procedures or functions that have not yet appeared must be listed as **forward**. For example, the import list for *expn *is **import** **forward** *term*  Before a procedure or function can be called, before its body appears, and before it can be passed as a parameter, its header as well as headers of procedures or functions imported directly or indirectly by it must have appeared.
The keyword **forward** is also used in **collection** and **type** declarations. 



##See also
**[collection.html](collection)** and **[type.html](type)** declarations.


