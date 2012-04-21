
#boolean

##Syntax
**boolean**



##Description
The **boolean** type is used for values that are either **true** or **false**. These true-false values can be combined by various operators such as **or** and **and**.



##Example



        var success : boolean := false
        var continuing := true      % The type is boolean
        
        success := mark >= 60
        continuing := success and continuing
        if continuing then 
##Details
This type is named after the British mathematician, George Boole, who formulated laws of logic.
The operators for **true** and **false** are **and**, **or**,* ***xor**, =**>**, and **not**. For two true/false values *A* and *B*, these operators are defined as follows:
 *A* **and** *B* is true when both are true *A* **or** *B* is true when either or both are true *A* **xor** *B* is true when either but not both are true *A* =**>** *B* (A implies B) is true when both are true or when A is false **not** *A* is true when A is false
The **and** operator has higher precedence than **or**, so *A* **or** *B* **and** *C* means *A* **or** (*B* **and** *C*).
The operators **or**, **and** and =**>** are short circuit operators. For example, if *A* is true in *A* **or** *B*, *B *is not evaluated.



##Details
The **boolean** type can be used as an index to an array.



##Example
Declaration of an array with **boolean** index.


        var a : array boolean of int
        a (false) := 10
        a (true) := 20
##Details
The **put** and **get** semantics allow put's and get's of boolean values. **true** values will be output as "true" and **false** values will be output as "false". The only legal input values are "true" and "false", which are case sensitive.



##See also
*[explicittruefalseconstant.html](explicitTrueFalseConstant)* (which discusses the values **[true.html](true)** and **[false.html](false)**), *[precedence.html](precedence)* and *[expn.html](expn) *(expression).


