
# expn

## Syntax
An _expn_ is one of:   (a) _explicitConstant_     _% e.g.: 25_   (b) _variableReference_     _% e.g.: width_   (c) _constantReference_     _% e.g.: pi_   (d) _expn_ _infixOperator_ _expn_   _% e.g.: 3 **+** width_   (e) _prefixOperator_ _expn_   _% e.g.: **-** width_   (f) (_expn_)       _% e.g.: (width - 7)_   (g) _substring_       _% e.g.: s (3 .. 5)_   (h) _functionCall_     _% e.g.: sqrt (25)_   (i) _setConstructor_     _% e.g.: modes (4_, _3)_   (j) _enumeratedValue_     _% e.g.: color . red_

## Description
An expression (_expn_) returns a value; in the general case, this may involve a calculation, such as addition, as in the expression:

            3 + width
## Example


        put "Hello world"           % "Hello world" is an expn
        var diameter : real
        const pi := 3.14159         % 3.14159 is an expn
        diameter := pi * r ** 2         % pi * r ** 2 is an expn
        var x := diameter               % diameter is an expn
## Details
In the simplest case, an expression (_expn_) is simply an explicit constant such as 25 or "_Hello world_". A variable by itself is considered to be an expression when its value is used. This is the case above, where the value of _diameter_ is used to initialize _x_. More generally, an expression contains an operator such as **+** and carries out an actual calculation. An expression may also be a substring, function call, set constructor or enumerated value. For details, see the descriptions of these items.

The Turing infix operators are: +, -, *, /, **div**, **mod**, **, <, >, =, <=, >=, **not=**, **not**, **and**, **or**, =>, **in**, **not** **in**, **shr** (shift right), **shl** (shift left), and **xor** (exclusive **or**). For details, see _infixOperator_. The Turing prefix operators are +, - and **not**, ^ (pointer following) and # (see **cheat**). For details see _prefix_ operator.


## See also
_[precedence](precedence.html)_ of operators, as well as the **[int](int.html)**, **[real](real.html)**, **[string](string1.html)** and **[boolean](boolean.html)** types.

