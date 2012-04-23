
# pervasive

## Description
When a variable, constant, type or subprogram is declared, you can specify that it is to be **pervasive**, which means that it does not need to be explicitly imported into modules, monitors or classes in the current scope. The keyword **pervasive** can be abbreviated as an asterisk (*).


## Example


        var pervasive counter : int % Short form: var * count : int
        const * maxCounter : int := 100
        procedure * p ( x : real )
            
        end p
## Details
The keyword **pervasive** is also used in **export** lists along with the keyword **unqualified**. See **export** list for details.


## See also
**[var](var.html)** [declaration](declaration.html), **[const](const.html)** [declaration](declaration.html), **[procedure](procedure.html)** [declaration](declaration.html), **[function](function.html)** [declaration](declaration.html), **subprogram** header and **[export](export.html)** list for uses of **[pervasive]()**.

