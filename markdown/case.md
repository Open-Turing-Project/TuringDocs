
#case

##Syntax
A *caseStatement* is:
 **case** *expn* **of**  { **label** *compileTimeExpn *{, *compileTimeExpn *} :   *statementsAndDeclarations* }  [ **label** :   *statementsAndDeclarations* ] **end** **case**

##Description
A **case** statement is used to choose among a set of statements (and declarations). One set is chosen and executed and then execution continues just beyond **end** **case**.
The expression (*expn*) following the keyword **case** is evaluated and used to select one of the alternatives (sets of declarations and statements) for execution. The selected alternative is the one having a label value equaling the case expression. If none are equal and there is a final **label** with no expression, that alternative is selected.

##Example
Output a message based on value of mark.
        case mark of
            label 9, 10 :   put "Excellent"
            label 7, 8 :        put "Good"
            label 6 :       put "Fair"
            label :     put "Poor"
        end case
##Example
Output a message based on value of name.
        case name of
            label "horse", "cow" :  put "Farm animal"
            label "tiger", "lion" : put "Jungle animal"
            label "cat", "dog" :    put "Pet"
            label :         put "Unknown animal"
        end case
##Details
The case expression is required to match one of the labels. If it does not, there must be a final **label** with no expression. Label expressions must have values known at compile time. All label values must be distinct. The case expression and the label values must have the same equivalent type, which must be an integer, **char**, **boolean**, an **enum** type or strings.
Note that there is no way to express a range of values (for example from 5 to 10) in a label. Each individual value must be expressed in the label.
