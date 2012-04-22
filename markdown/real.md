
#real

##Syntax
**real**



##Description
The **real** number type is used for numbers that have fractional parts, for example, 3.14159. Real numbers can be combined by various operators such as addition (+) and multiplication (*). Real numbers can also be combined with integers (whole numbers, such as 23, 0 and -9), in which case the result is generally a real number. An integer can always be assigned to a real variable, with implicit conversion to **real**.



##Example



        var weight, x : real
        var x : real := 9.83
        var tax := 0.7      % The type is implicitly real because
                        % 0.7 is a real number
##Details
See also _explicitRealConstant_. The **int** type is used instead of **real**, when values are whole numbers. See **int** for details.
Real numbers can be converted to integers using **ceil** (ceiling), **floor**, or **round**. Real numbers can be converted to strings using **erealstr**, **frealstr**, and **realstr**. These conversion functions correspond exactly to the formatting used for the **put** statement with real numbers. Strings can be converted to real numbers using **strreal**. See descriptions of these conversion functions.
The predefined functions for real numbers include **min**,_ _**max**,_ _**sqrt**,_ _**sin**,_ _**cons**,_ _**arctan**,_ _**sind**,_ _**cosd**,_ _**arcand**,_ _**ln**_ _and **exp**. See the descriptions of these functions.
Pseudo-random sequences of real numbers can be generated using **rand**. See the description of this procedure.
The Turing Report gives a formal definition (not repeated here) of implemented real numbers in terms of their required accuracy relative to infinitely accurate (mathematical) real numbers.
Turing implements real numbers using 8 byte floating point representation. This provides 14 to 16 decimal digits of precision and an exponent range of at least -38 .. 38. The PC and Macintosh versions of Turing have 16 decimal digits of accuracy because they use IEEE standard floating point representation.



##See also
**[](real)**_n_.


