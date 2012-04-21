
#infix

##Syntax
An *infixOperator* is one of:
 (a)**+** *% Integer and real addition; set union;*    *% string catenation* (b)- *% Integer and real subtraction; set difference* (c)***** *% Integer and real multiplication; set intersection* (d)**/** *% Real division* (e)**div** *% Truncating integer division* (f)**mod** *% Modulo* (g)**rem** *% Remainder*  (h)****** *% Integer and real exponentiation* (i)**<** *% Less than* (j)**>** *% Greater than* (k)= *% Equal* (l)**<**= *% Less than or equal; subset* (m)**>**= *% Greater than or equal; superset* (n)**not=** *% Not equal* (o)**and** *% And (boolean conjunction)* (p)**or** *% Or (boolean disjunction)* (q)=**>** *% Boolean implication* (r)**in** *% Member of set* (s)**not** **in** *% Not member of set* (t)**shr** *% Shift right* (u)**shl** *% Shift left* (v)**xor** *% Exclusive OR*



##Description
An *infix operator* is placed between two values or *operands* to produce a third value. For example, the result of 5 + 7 is 12. In some cases the meaning of the operator is determined by its operands. For example, in "pine" + "apple", the + operator means string catenation while in 5 + 7 it means integer addition. There are also *prefix operators* (-, + and **not**), which are placed in front of a single value. See *prefix operator*.
In expressions with several operators, such as 3 + 4 * 5, the *precedence *rules determine the order in which the operation is done  (see *precedence *for a listing of these rules). In this example, the multiplication is done before the addition, so the expression is equivalent to 3 + (4 * 5).
The numerical (integer or real) operators are +, -, *, /, **div**, **mod**, and **. All of these except **div** produce a **real** result when at least one of their operands is **real**. If both operands are integers, the result is an integer except in the case of **real** division (/) which always produces a **real** result regardless of the operands.
The **div** operator is like **real** division (**/**), except that it always produces an integer result, truncating any fraction to produce the nearest integer in the direction of zero.
The **mod** operator is the *modulo* and the **rem** operator is the *remainder*. The sign of the result of **mod* ***operator is the same as the sign of the second operand. The **rem** operator operates like the **mod** operator in Turing (and in most other languages). It produces the remainder, which is the difference between **real** division (**/**) and integer division (**div**). When both operands are positive, this is the *modulo*. For example, 14 **mod** 10 is 4. If one of the operands is negative, a negative answer may result, for example, 7 **mod** 2 is 1. See also the **int** and **real** types.
The comparison operators (<, >, =, <=, >=, **not=**) can be applied to numbers as well as to enumerated types. They can also be applied to strings to determine the *ordering* between strings (see **string** type for details). Arrays, records, unions and collections cannot be compared. Boolean values (**true** and **false**) can be compared only for equality (= and **not=**); the same applies to **pointer** values. Set values can be compared using <= and >=, which are the subset and superset operators. The **not=** operator can be written as ~=.
Strings are manipulated using catenation (+) as well as substring expressions (see *substring*) and the **index*** *function (see **index**). See also the **string** type.
The operators to combine true/false values are **and**, **or**, and => (implication), as well as equality (= and **not=**). See also the **boolean** type.
The set operators are union (+), intersection (*), set difference (-), subset (<=), superset (>=), and membership (**in** and **not** **in**). See also the **set** type.
The **shr** (shift right), **shl** (shift left) and **xor** (exclusive OR) operators accept and produce natural numbers. See **shr**, **shl**, and **xor**.


