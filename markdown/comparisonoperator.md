
#comparisonOperator

##Syntax
A *comparisonOperator* is one of:
 (a)**<** *% Less than* (b)**>** *% Greater than* (c)= *% Equal* (d)**<**= *% Less than or equal; subset* (e)**>**= *% Greater than or equal; superset* (f)**not=** *% Not equal*

##Description
A comparison operator is placed between two values to determine their equality or ordering. For example, 7 > 2 is true and so is "Adam" < "Cathy". The comparison operators can be applied to numbers as well as to enumerated types. They can also be applied to strings to determine the *ordering* between strings (see the **string** type for details). Arrays, records, unions and collections cannot be compared. Boolean values (**true** and **false**) can be compared only for equality (= and **not=**); the same is true of  **pointer** values. Set values can be compared using <= and >=, which are the subset and superset operators. The **not=** operator can be written as ~=.
Comparisons among classes is also supported (see **class**). If *C* and *D* are classes, *C* <= *D* means *D* is a descendant of (inherits from) *C*. See **class**.

##See also
See also *[infix.html](infix)* operators and *[precedence.html](precedence)* of operators. See also the **[int.html](int)**, **[real.html](real)**, **[string1.html](string)**, **[set.html](set)**, **[boolean.html](boolean)** and **[enum.html](enum)** types. See also **[string1.html](string)** comparison.
