
# begin

## Syntax
A _beginStatement_ is:   **begin**     _statementsAndDeclarations_   **end**

## Description
A **begin** statement limits the scope of declarations made within it to the confines of the **begin/end** block. In Turing, **begin** is rarely used, because declarations can appear wherever statements can appear, and because every structured statement such as **if** ends with an explicit **end**.


## Example


        begin
            var bigArray : array 1 .. 2000 of real
             bigArray will exist only inside this begin statement
        end
## Details
In Pascal programs, **begin** statements are quite common because they are required for grouping two or more statements, for example, to group the statements that follow **then**. This is not necessary in Turing as where ever you can write a single statement, you can also write several statements.

