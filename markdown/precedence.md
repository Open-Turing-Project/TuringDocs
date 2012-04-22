
#precedence

##Description
Turing's _precedence_ rules determine the order of applying operators in an expression such as 3 + 4 * 5. These rules state, for example, that multiplication is done before addition, so this expression is equivalent to 3+ (4 * 5).
Parenthesized parts of an expression are evaluated before being used. For example, in (1 + 2) * 3, the addition is done before the multiplication.
The precedence rules are defined by this table, in which operators appearing earlier in the table are applied first. For example,  multiplication is applied before addition:









( _boolean_ _implication_)

Operators appearing on a single line in this table are applied from left to right. For example, _abc_ is the same is (_ab_)_c_.
Here are some examples illustrating precedence, in which the left and right expressions are equivalent:




_b_ **or** (_c_ **and** _d_)
(_x_ < _y_) **and** (_y_ < _z_)

The final example illustrates the fact that in Turing, parentheses are not required when combining comparisons using **and** and **or**. These would be required in the Pascal language.
The type cheat operator # is applied after subscripting, subprogram calling, dotting, and >. For example, in each of the following, # applies to the entire reference to the right.





The pointer following operator ^ is applied before subscripting, subprogram calling, dotting, and ->. For example, in the following, ^ applies to a, r and p.





Use parentheses to force ^ to apply to more of the reference. For example, in ^(a(i)), the ^ applies to a(i).



##See also
_[infix.html](infix)_ and _[prefix.html](prefix)_ operators. See the **[int.html](int)**, **[real.html](real)**, **[string1.html](string)**, **[boolean.html](boolean)**, **[set.html](set)**, **[enum.html](enum)**, **[char.html](char)** and **[char.html](char)**(_n_) types.


