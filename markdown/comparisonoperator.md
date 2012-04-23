
#comparisonOperator

##Syntax
A _comparisonOperator_ is one of:


(a) **<**   _% Less than_
(b) **>**   _% Greater than_
(c) =   _% Equal_
(d) **<**=   _% Less than or equal; subset_
(e) **>**=   _% Greater than or equal; superset_
(f) **not=**   _% Not equal_



##Description
A comparison operator is placed between two values to determine their equality or ordering. For example, 7 > 2 is true and so is "Adam" < "Cathy". The comparison operators can be applied to numbers as well as to enumerated types. They can also be applied to strings to determine the _ordering_ between strings (see the **string** type for details). Arrays, records, unions and collections cannot be compared. Boolean values (**true** and **false**) can be compared only for equality (= and **not=**); the same is true of  **pointer** values. Set values can be compared using <= and >=, which are the subset and superset operators. The **not=** operator can be written as ~=.

Comparisons among classes is also supported (see **class**). If _C_ and _D_ are classes, _C_ <= _D_ means _D_ is a descendant of (inherits from) _C_. See **class**.


##See also
See also _[infix.html](infix)_ operators and _[precedence.html](precedence)_ of operators. See also the **[int.html](int)**, **[real.html](real)**, **[string1.html](string)**, **[set.html](set)**, **[boolean.html](boolean)** and **[enum.html](enum)** types. See also **[string1.html](string)** comparison.

