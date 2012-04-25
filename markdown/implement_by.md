
# implement by

## Syntax
An _implementByClause_ is:   
**implement** **by** _implementByItem_

## Description
An implement-by clause is used to specify that a module, monitor or class _C_ is to be automatically implemented by the _implementByItem_. _C_ is called the _interface_ and the _implementByItem_, which must contain an implement clause, is called the _implementation_. See **implement** clause for details and an example.

The implement-by clause can only be used in a **unit**. See **unit** for the definition of a unit.

An implementByItem is one of:


-   _id_
-   _id_ **in** _fileName_


The second form is used when the implement-by clause is for a separate **unit** and the imported item is in a file whose name is different from the item's name, as in:

The fileName must be an explicit character string, e.g., "ledgbod.t". See also **unit**. Parentheses are allowed around the items in an **implement-by** clauses, as in:

        implement by ledgerBody in "ledgbod.t"
        implement by ( ledgerBody in "ledgbod.t" )
                        
