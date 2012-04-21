
#prefix

##Syntax
A *prefixOperator*  is one of:
 (a)**+** *% Integer and real identity*   *% (does not change value)* (b) *% Integer and real negation* (c)**not** *% Not (Boolean negation)* (d)**#** *% Type cheat* (e)**^** *% Pointer following*

##Description
A *prefix operator* is placed before a value or *operand *to produce another value. For example, if the value of *x *is seven, then -*x *is negative seven. There are also infix operators such as multiplication (*) and addition (+), which are placed between two values to produce a third value. See *infix operator*.
The + and  prefix operators can be applied only to numeric values (integer, real and natural numbers). The **not** prefix can be applied only to true/false (boolean) values. For example **not** (*x *> *y*)* * is equivalent to *x *<= *y*. The **not** operator produces **true** from **false** and **false** from **true**.
The # operators is a type cheat (see **cheat**), and the ^ operator is pointer following (see **pointer**).
See also **int**, **real** and **boolean** types, as well as *precedence *(for the order of applying operators) and *infix operators*.
