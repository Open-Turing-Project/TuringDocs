
#function

##Syntax
A *functionDeclaration* is:
 **function** *id *[ ( [*paramDeclaration *{, *paramDeclaration* } ] ) ]       : *typeSpec*  *statementsAndDeclarations* **end** *id*



##Description
A function declaration creates (but does not run) a new function. The name of the function (*id*) is given in two places, just after **function** and just after **end**.



##Example



        function doubleIt ( x : real ) : real
            result 2.0 * x
        end doubleIt
        
        put doubleIt ( 5.3 )        % This outputs 10.6
##Details
The set of parameters declared with the function are called *formal* parameters. For example, in the *doubleIt* function, *x* is a formal parameter. A function is called (invoked) by a *function call *which consists of the function's name followed by the parenthesized list of *actual *parameters (if any). For example, *doubleIt *(5.3) is a call having 5.3 as an actual parameter. If there are no parameters and no parentheses, the call does not have parentheses. The keyword **function** can be abbreviated to **fcn**. See also *functionCall *and *procedureDeclaration*.
Each actual non-**var** parameter must be assignable to the type of its corresponding formal parameter. See also *assignability*.
A function must finish by executing a **result** statement, which produces the function's value. In the above example, the **result** statement computes and returns the value 2.0 * *x*.
In principle, a function (1) should not change any variables outside of itself (global variables) or (2) should not have **var** parameters. In other words, it should have no *side effects*. The original implementation prevented (1) and (2) and thereby prevented function side effects. Current implementations of Turing do not enforce this restriction.
The upper bounds of arrays and strings that are parameters may be declared to be an asterisk (*****), meaning the bound is that of the actual parameter. See *paramDeclaration* for details about parameters.
Procedures and functions cannot be declared inside other procedures and functions.
The syntax of a *functionDeclaration* presented above has been simplified by leaving out the optional result identifier, **import** list, **pre** condition, **init** clause, **post** condition and exception handler. The full syntax* *is
The *resultId* is the name of the result of the function and can be used only in the **post** condition.
A function must be declared before being called; to allow for mutually recursive procedures and functions, there are **forward** declarations with later declaration of the procedure or function **body**. See **forward** and **body** declarations for explanations.
You declare parameterless functions using an empty parameter list. When this is done, a call to the function must include an empty parameter list.


        function [ pervasive ] id
            [ ( [ paramDeclaration {,paramDeclaration } ] ) ] 
                [ resultId ] : typeSpec
            [ pre trueFalseExpn ]
            [ init id := expn {, id := expn } ]
            [ post trueFalseExpn ]
            [ exceptionHandler ]
            statementsAndDeclarations
        end id
##See also
**[import.html](import)** list, **[pre.html](pre)** [condition.html](condition), **[init.html](init)** clause, **[post.html](post)** [condition.html](condition) and *exceptionHandler* for explanations of these additional features.
See also **[pervasive.html](pervasive)**. 


