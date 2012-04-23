
# Limits

## Description
This unit contains constants and functions used in determining the mathematical accuracy of the language.

All routines in the Limits module are exported qualified (and thus must be prefaced with "**Limits.**") except **maxint**, **maxnat**, **minint** and **minnat**, which are exported unqualified (this means you can call those entry points directly).


## Entry Points

[**DefaultFW**](limits_defaultfw.html)   Default fraction width used in printing using the "put" statement.
[**DefaultEW**](limits_defaultew.html)   Default exponent width used in printing using the "put" statement.
[**minint**](limits_minint.html)   The minimum integer in Turing (exported unqualified).
[**maxint**](limits_maxint.html)   The maximum integer in Turing (exported unqualified).
[**minnat**](limits_minnat.html)   The minimum natural number in Turing (exported unqualified).
[**maxnat**](limits_maxnat.html)   The maximum natural number in Turing (exported unqualified).


**Real numbers are represented in Turing  as:****f * (radix ** e)   or  0****where for non-zero f:****(1 / radix) <= abs (f) and abs (f) < 1.0****minexp <= e and e <= maxexp**.


**Radix**   The "radix" (usually 2).
**NumDigits**   The number of radix digits in f.
**MinExp**   "minexp" (the smallest exponent allowed).
**MaxExp**   "maxexp" (the largest exponent allowed).
**GetExp**   Function that returns the value of "e".
**SetExp**   Procedure that sets the value of "e".
**Rreb**   The relative round-off error bound.


