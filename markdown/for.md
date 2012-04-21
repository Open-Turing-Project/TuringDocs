
#for

##Syntax
A *forStatement* is:
 **for** [**decreasing**] [*id* ] : *first* .. *last* [**by** *increment*]  *statementsAndDeclarations* **end** **for**

##Description
The statements and declarations in a **for** statement are repeatedly executed. In the first iteration, the identifier is assigned the value of *first*. With each additional iteration, the identifier increases by 1 (or by *increment*, if the **by** clause is present). The loop stops executing when adding 1 (or *increment)* to the identifier would cause the identifier to exceed *last*. *first* and *last* must be integer values (or else enumerated or **char** values). If you specify **decreasing**, then the identifier decreases by 1 (or by *increment*) each time through.
*Increment* must be a positive integer value. When the **by** clause is present, the **for** loop terminates as soon as the identifier would become greater than *last*, unless **decreasing** is present. If **decreasing** is present, the loop terminates when the identifier would become less than *last*.

##Details
The identifier is checked before it is added to (or subtracted from). This means that the loop
will not cause an overflow.
        for i : 1 .. maxint
##Example
Output 1, 2, 3 to 10.
        for i : 1 .. 10
            put i
        end for
##Example
Output 1, 3, 5, 7 and 9.
        for i : 1 .. 10 by 2
            put i
        end for
##Example
Output 10, 9, 8, down to 1.
        for decreasing j : 10 .. 1
            put j
        end for
##Example
Output 10, 6, and 2.
        for decreasing j : 10 .. 1 by 4
            put j
        end for
##Example
Output 1.
        for j : 1 .. 10 by 20
            put j
        end for
##Example
Output nothing.
        for j : 5 .. 2
            put j
        end for
##Details
The **for** statement declares the counting identifier (a separate declaration should not be given for *i* or *j*). The scope of this identifier is restricted to the **for** statement.
If *first *is a value beyond *last*, there will be no repetitions (and no error message). The counting identifier is always increased (or decreased) by 1 or *increment* if the **by** clause is present. Executing an **exit** statement inside a **for** statement causes a jump to just beyond **end** **for**. You are not allowed to change the counting variable (for example, you are not allowed to write *i* := 10).
The counting identifier can be omitted. In this case, the statement is just as before, except  that the program cannot use the value of the identifier.
If **decreasing** is not present, *first* .. *last* can be replaced by the name of a subrange type, for example by *dozen*, declared by:
Procedures, functions and modules cannot be declared inside a **for** statement. Just preceding the statements and declarations, you are allowed to write an "invariant clause" of the form:
This clause is equivalent to: **assert** *trueFalseExpn*.
        type dozen : 1..12        invariant trueFalseExpn
