
#implement by

##Syntax
An *implementByClause* is:
 **implement** **by** *implementByItem*

##Description
An implement-by clause is used to specify that a module, monitor or class *C *is to be automatically implemented by the *implementByItem*. *C* is called the *interface* and the *implementByItem*, which must contain an implement clause, is called the *implementation*. See **implement** clause for details and an example.
The implement-by clause can only be used in a **unit**. See **unit** for the definition of a unit.
An implementByItem is one of:
 (a) *id* (b) *id* **in** *fileName*
The second form is used when the implement-by clause is for a separate **unit** and the imported item is in a file whose name is different from the item's name, as in:
The fileName must be an explicit character string, e.g., "ledgbod.t". See also **unit**. Parentheses are allowed around the items in an **implement-by** clauses, as in:
        implement by ledgerBody in "ledgbod.t"        implement by ( ledgerBody in "ledgbod.t" )
