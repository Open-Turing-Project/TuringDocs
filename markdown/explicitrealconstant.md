
#explicitRealConstant

##Syntax
An *explicitRealConstant* consists of an optional plus or minus sign, a *significant digits part*, and an *exponent part*.



##Example
In the following, the explicit real constants are 0.0 and 2.93e3.


        var temperature : real := 0.0
        const speed := 2.93e3       % Value is 2,930.0
##Details
The significant digits part (or *fractional part*) of an explicit real constant consists of a sequence of one or more digits (0 to 9) optionally containing a decimal point (a period). The decimal point is allowed to follow the last digit as in 16. or to precede the first digit, as in .25.
The exponent part consists of the letter *e *or *E* followed optionally by a plus or minus sign followed by one or more digits. For example, in -9.837e-3 the exponent part is e-3. The value of -9.837e-3 is -9.837 times 0.001.
If the significant figures part contains a decimal point, then the exponent part is not required.


