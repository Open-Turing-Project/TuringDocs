
#expn

##Syntax
An *expn* is one of:
 (a)*explicitConstant*  *% e.g.: 25* (b)*variableReference*  *% e.g.: width* (c)*constantReference*  *% e.g.: pi* (d)*expn* *infixOperator* *expn* *% e.g.: 3 **+** width* (e)*prefixOperator* *expn* *% e.g.: **-** width* (f)(*expn*)   *% e.g.: (width - 7)* (g)*substring*   *% e.g.: s (3 .. 5)* (h)*functionCall*  *% e.g.: sqrt (25)* (i)*setConstructor*  *% e.g.: modes (4*,* 3)* (j)*enumeratedValue*  *% e.g.: color . red*



##Description
An expression (*expn*)* *returns a value; in the general case, this may involve a calculation, such as addition, as in the expression:


            3 + width
##Example



        put "Hello world"           % "Hello world" is an expn
        var diameter : real
        const pi := 3.14159         % 3.14159 is an expn
        diameter := pi * r ** 2         % pi * r ** 2 is an expn
        var x := diameter               % diameter is an expn
##Details
In the simplest case, an expression (*expn*) is simply an explicit constant such as 25 or "*Hello world*". A variable by itself is considered to be an expression when its value is used. This is the case above, where the value of *diameter* is used to initialize *x*. More generally, an expression contains an operator such as **+** and carries out an actual calculation. An expression may also be a substring, function call, set constructor or enumerated value. For details, see the descriptions of these items.
The Turing infix operators are: +, -, *, /, **div**, **mod**, **, <, >, =, <=, >=, **not=**, **not**, **and**, **or**, =>, **in**, **not** **in**, **shr** (shift right), **shl** (shift left), and **xor** (exclusive **or**). For details, see *infixOperator*. The Turing prefix operators are +, - and **not**, ^ (pointer following) and # (see **cheat**). For details see *prefix *operator.



##See also
*[precedence.html](precedence) *of operators, as well as the **[int.html](int)**, **[real.html](real)**, **[string1.html](string)** and **[boolean.html](boolean)** types.


