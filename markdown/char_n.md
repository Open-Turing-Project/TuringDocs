
#char(n)

##Syntax
**char** (*numberOfCharacters*)



##Description
Each variable whose type is a **char**(*n*) contains exactly *n* characters.



##Example
Canadian postal codes contain six characters, for example, M4V 1Y9. This is represented in a **char**(6) variable:


        var postalCode : char (6) := 'M4V1Y9'
##Details
Explicit constants for the **char**(*n*) type use single quotes as in 'M4V1Y9', as opposed to explicit **string** constants which use double quotes, as in "Nancy". A single character single quoted character, such as 'A', is considered to have the type **char** instead of **char**(*n*), but since these two types can be assigned to each other and compared to each other, this fact has little consequence.
The type **char**(*n*) is generally more difficult to use than the **string** type, which is favored for most simple programs. The type **char**(*n*) has the advantage that it is efficient in terms of both space and time. In particular, it is represented as *n* bytes in the computer's memory. By contrast, the **string** type must use extra space (a trailing zero byte in current implementations) to represent the current length and allocates space for the maximum value it can hold.
The form of *numberOfCharacters* is one of:
 (a) *expn* *% Integer value* (b) * *% Only in subprogram parameters*
The first form determines *n*. If the expression is a run time value, the type is considered to be *dynamic* **char**(*n*). The value of *n* must be at least 1. The second form is used only for subprogram parameters and uses the length of the actual parameter. This too, is considered to be a* dynamic* **char**(*n*) type. Dynamic **char**(*n*) types can only be passed to **char**(*) parameters. Dynamic **char**(*n*) types have the same restrictions as dynamic arrays. This implies they cannot be assigned as a whole and cannot appear in record and union types.
An implementation may impose a limit, recommended to be at least 32767, on the length *n*.
Values of the **char**(*n*) type can be assigned and they can be compared for both equality and for ordering, but only if they have the same length and they are not dynamic (i.e. the length must be known at compile time).
Values of the **char**(*n*) type can be read and written by **get** and **put** statements.
The **char**(*n*) type is a nonscalar, which implies that its parameters are always passed by reference (by means of an implicit pointer).
As is true for the **char** type, all 256 possible values of an 8-bit byte are allowed for each character in **char**(*n*) type. There is no pattern left to be used for the "initialized value", so there is no uninitialized checking for **char**(*n*).
In general, you can freely intermix the values of the types **char**, **char**(*n*) and **string**. This means that catenation (+), comparisons, **length** and substrings can be applied to any of these types. See **catenation** and **substring**. If two non dynamic **char**(*n*) values (or **char** values) are catenated, the result is a **char**(*n*)value. If either are dynamic,  it is a **string** value. This implies that very long **char**(*n*) values can be created by catenating them together, for example to initialize a **char**(*n*) variable.
A **char** value can be assigned (or passed to an non **var** parameter) with automatic conversion to a **char**(1) variable and vice versa. String values of length 1 can be assigned to **char** variables. Character (**char**) values can be assigned to string variables, yielding a string of length 1. String values of length *n* are assignable with automatic conversion to **char**(*n*) variables. Values of type **char**(*n*) can be assigned with automatic conversion to **string** variables.
When comparing two **char**(*n*) values, as in s > t, if both are non-dynamic and of the same length, they are compared without converting to strings. If either are dynamic, they are converted to strings and then compared.



##See also
the **[char.html](char)** type which is much like **char**(1). See also the **[string1.html](string)** type.


