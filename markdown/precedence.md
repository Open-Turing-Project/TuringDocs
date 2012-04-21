
#precedence

##Description
Turing's *precedence *rules determine the order of applying operators in an expression such as 3 + 4 * 5. These rules state, for example, that multiplication is done before addition, so this expression is equivalent to 3+ (4 * 5).
Parenthesized parts of an expression are evaluated before being used. For example, in (1 + 2) * 3, the addition is done before the multiplication.
The precedence rules are defined by this table, in which operators appearing earlier in the table are applied first. For example,  multiplication is applied before addition:
 (1) **,  ^,  # (2) *prefix* + and - (3) *, /, **div**, **mod**, **rem**, **shr**, **shl** (4) *infix *+, -, **xor** (5) <, >, =, <=, >=, **not=**, **in**, **not** **in** (6) **not** (7) **and** (8) **or** (9) =>  ( *boolean* *implication*)
Operators appearing on a single line in this table are applied from left to right. For example, *abc *is the same is (*ab*)*c*.
Here are some examples illustrating precedence, in which the left and right expressions are equivalent:
 1**2   (1**2) *a*+*b***c*   *a*+(*b***c*) *a***b/c*   (*a***b*)*/c* *b ***or** *c* **and** *d*  *b ***or** (*c ***and** *d*) *x* < *y ***and** *y < z*  (*x* <* y*) **and*** *(*y* < *z*)
The final example illustrates the fact that in Turing, parentheses are not required when combining comparisons using **and** and **or**. These would be required in the Pascal language.
The type cheat operator # is applied after subscripting, subprogram calling, dotting, and >. For example, in each of the following, # applies to the entire reference to the right.
 #*a*(*i*) #*r*.*y* #*p*->*x*
The pointer following operator ^ is applied before subscripting, subprogram calling, dotting, and ->. For example, in the following, ^ applies to a, r and p.
 ^*a*(*i*) ^*r.y* ^*p*->*x*
Use parentheses to force ^ to apply to more of the reference. For example, in ^(a(i)), the ^ applies to a(i).



##See also
*[infix.html](infix)* and *[prefix.html](prefix) *operators. See the **[int.html](int)**, **[real.html](real)**, **[string1.html](string)**, **[boolean.html](boolean)**, **[set.html](set)**, **[enum.html](enum)**, **[char.html](char)** and **[char.html](char)**(*n*) types.


