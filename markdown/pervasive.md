
#pervasive

##Description
When a variable, constant, type or subprogram is declared, you can specify that it is to be **pervasive**, which means that it does not need to be explicitly imported into modules, monitors or classes in the current scope. The keyword **pervasive** can be abbreviated as an asterisk (*).


##Example


        var pervasive counter : int % Short form: var * count : int
        const * maxCounter : int := 100
        procedure * p ( x : real )
            
        end p
##Details
The keyword **pervasive** is also used in **export** lists along with the keyword **unqualified**. See **export** list for details.


##See also
**[var.html](var)** [declaration.html](declaration), **[const.html](const)** [declaration.html](declaration), **[procedure.html](procedure)** [declaration.html](declaration), **[function.html](function)** [declaration.html](declaration), **subprogram** header and **[export.html](export)** list for uses of **[](pervasive)**.

