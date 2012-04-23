
#loop

##Syntax
A _loopStatement_ is:


**loop**
_statementsAndDeclarations_
**end** **loop**



##Description
A **loop** statement causes the statements (and declarations) in it to be repeatedly executed. This continues until terminated by one of its enclosed **exit** statements (or by an enclosed **return** or **result** statement).


##Example
Output on separate lines: Happy, Happy, Happy, etc.

        loop
            put "Happy"
        end loop
##Example
Read words up to the word Stop.

        var word : string
        loop
            get word
            exit when word = "Stop"
        end loop
##Details
A **loop** statement can contain more than one **exit**, or none at all (in which case it is an infinite loop). When the **exit** **when** is at the beginning of the loop, the loop works like Pascal's **do** **while**; when at the end, the loop works like Pascal's **repeat** **until**.

Just preceding the statements and declarations, you are allowed to write an "invariant clause" of the form:

This clause is equivalent to: **assert** _trueFalseExpn_.

        invariant trueFalseExpn
