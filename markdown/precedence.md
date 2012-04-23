
# precedence

## Description
Turing's _precedence_ rules determine the order of applying operators in an expression such as 3 + 4 * 5. These rules state, for example, that multiplication is done before addition, so this expression is equivalent to 3+ (4 * 5).

Parenthesized parts of an expression are evaluated before being used. For example, in (1 + 2) * 3, the addition is done before the multiplication.

The precedence rules are defined by this table, in which operators appearing earlier in the table are applied first. For example,  multiplication is applied before addition:


(1)   **,  ^,  #
(2)   _prefix_ + and -
(3)   *, /, **div**, **mod**, **rem**, **shr**, **shl**
(4)   _infix_ +, -, **xor**
(5)   <, >, =, <=, >=, **not=**, **in**, **not** **in**
(6)   **not**
(7)   **and**
(8)   **or**
(9)   =>     ( _boolean_ _implication_)


Operators appearing on a single line in this table are applied from left to right. For example, _abc_ is the same is (_ab_)_c_.

Here are some examples illustrating precedence, in which the left and right expressions are equivalent:


1**2       (1**2)
_a_+_b_*_c_       _a_+(_b_*_c_)
_a_*_b/c_       (_a_*_b_)_/c_
_b_ **or** _c_ **and** _d_     _b_ **or** (_c_ **and** _d_)
_x_ < _y_ **and** _y < z_     (_x_ < _y_) **and** (_y_ < _z_)


The final example illustrates the fact that in Turing, parentheses are not required when combining comparisons using **and** and **or**. These would be required in the Pascal language.

The type cheat operator # is applied after subscripting, subprogram calling, dotting, and >. For example, in each of the following, # applies to the entire reference to the right.


#_a_(_i_)
#_r_._y_
#_p_->_x_


The pointer following operator ^ is applied before subscripting, subprogram calling, dotting, and ->. For example, in the following, ^ applies to a, r and p.


^_a_(_i_)
^_r.y_
^_p_->_x_


Use parentheses to force ^ to apply to more of the reference. For example, in ^(a(i)), the ^ applies to a(i).


## See also
_[infix](infix.html)_ and _[prefix](prefix.html)_ operators. See the **[int](int.html)**, **[real](real.html)**, **[string](string1.html)**, **[boolean](boolean.html)**, **[set](set.html)**, **[enum](enum.html)**, **[char](char.html)** and **[char](char.html)**(_n_) types.

