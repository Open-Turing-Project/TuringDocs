
#Limits

##Description
This unit contains constants and functions used in determining the mathematical accuracy of the language.
All routines in the Limits module are exported qualified (and thus must be prefaced with "**Limits.**") except **maxint**, **maxnat**, **minint** and **minnat**, which are exported unqualified (this means you can call those entry points directly).



##Entry Points

[limits_defaultfw.html](**DefaultFW**) Default fraction width used in printing using the "put" statement.
[limits_defaultew.html](**DefaultEW**) Default exponent width used in printing using the "put" statement.
[limits_minint.html](**minint**) The minimum integer in Turing (exported unqualified).
[limits_maxint.html](**maxint**) The maximum integer in Turing (exported unqualified).
[limits_minnat.html](**minnat**) The minimum natural number in Turing (exported unqualified).
[limits_maxnat.html](**maxnat**) The maximum natural number in Turing (exported unqualified).

**Real numbers are represented in Turing  as:****where for non-zero f:****minexp <= e and e <= maxexp**.

**Radix** The "radix" (usually 2).
**NumDigits** The number of radix digits in f.
**MinExp** "minexp" (the smallest exponent allowed).
**MaxExp** "maxexp" (the largest exponent allowed).
**GetExp** Function that returns the value of "e".
**SetExp** Procedure that sets the value of "e".
**Rreb** The relative round-off error bound.



