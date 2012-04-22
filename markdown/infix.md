
#infix

##Syntax
An _infixOperator_ is one of:

(a)**+** _% Integer and real addition; set union;_ 
_% string catenation_
(b)- _% Integer and real subtraction; set difference_
(c)__*__ _% Integer and real multiplication; set intersection_
(d)**/** _% Real division_
(e)**div** _% Truncating integer division_
(f)**mod** _% Modulo_
(g)**rem** _% Remainder_ 
(h)****** _% Integer and real exponentiation_
(i)**<** _% Less than_
(j)**>** _% Greater than_
(k)= _% Equal_
(l)**<**= _% Less than or equal; subset_
(m)**>**= _% Greater than or equal; superset_
(n)**not=** _% Not equal_
(o)**and** _% And (boolean conjunction)_
(p)**or** _% Or (boolean disjunction)_
(q)=**>** _% Boolean implication_
(r)**in** _% Member of set_
(s)**not** **in** _% Not member of set_
(t)**shr** _% Shift right_
(u)**shl** _% Shift left_
(v)**xor** _% Exclusive OR_




##Description
An _infix operator_ is placed between two values or _operands_ to produce a third value. For example, the result of 5 + 7 is 12. In some cases the meaning of the operator is determined by its operands. For example, in "pine" + "apple", the + operator means string catenation while in 5 + 7 it means integer addition. There are also _prefix operators_ (-, + and **not**), which are placed in front of a single value. See _prefix operator_.
In expressions with several operators, such as 3 + 4 * 5, the _precedence _rules determine the order in which the operation is done  (see _precedence _for a listing of these rules). In this example, the multiplication is done before the addition, so the expression is equivalent to 3 + (4 * 5).
The numerical (integer or real) operators are +, -, *, /, **div**, **mod**, and **. All of these except **div** produce a **real** result when at least one of their operands is **real**. If both operands are integers, the result is an integer except in the case of **real** division (/) which always produces a **real** result regardless of the operands.
The **div** operator is like **real** division (**/**), except that it always produces an integer result, truncating any fraction to produce the nearest integer in the direction of zero.
The **mod** operator is the _modulo_ and the **rem** operator is the _remainder_. The sign of the result of **mod_ _**operator is the same as the sign of the second operand. The **rem** operator operates like the **mod** operator in Turing (and in most other languages). It produces the remainder, which is the difference between **real** division (**/**) and integer division (**div**). When both operands are positive, this is the _modulo_. For example, 14 **mod** 10 is 4. If one of the operands is negative, a negative answer may result, for example, 7 **mod** 2 is 1. See also the **int** and **real** types.
The comparison operators (<, >, =, <=, >=, **not=**) can be applied to numbers as well as to enumerated types. They can also be applied to strings to determine the _ordering_ between strings (see **string** type for details). Arrays, records, unions and collections cannot be compared. Boolean values (**true** and **false**) can be compared only for equality (= and **not=**); the same applies to **pointer** values. Set values can be compared using <= and >=, which are the subset and superset operators. The **not=** operator can be written as ~=.
Strings are manipulated using catenation (+) as well as substring expressions (see _substring_) and the **index**_ _function (see **index**). See also the **string** type.
The operators to combine true/false values are **and**, **or**, and => (implication), as well as equality (= and **not=**). See also the **boolean** type.
The set operators are union (+), intersection (*), set difference (-), subset (<=), superset (>=), and membership (**in** and **not** **in**). See also the **set** type.
The **shr** (shift right), **shl** (shift left) and **xor** (exclusive OR) operators accept and produce natural numbers. See **shr**, **shl**, and **xor**.


