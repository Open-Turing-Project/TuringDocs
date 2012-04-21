
#register

##Description
When a variable, constant or parameter is declared, you can request that the item be placed in a machine register. This should be done only for programs requiring considerable efficiency.

##Example

        var register counter : int
        const register maxCounter : int := 100
        procedure p ( register x : real )
            
        end p
##Details
Items can be requested to be in registers only if they are local to a subprogram (not global variables, declared in the main program, a module, monitor or class). Items requested to be in registers cannot be bound to, passed to reference parameters, have their address taken by **addr**, or  have certain type cheats applied to them (since a machine register has no address).
The request to use a register may be ignored. For example, the current (1999) interpretive implementation uses pseudo-code, which has no machine registers, and so ignores the **register** keyword. For the syntax of using this keyword, see **var** declaration, **const** declaration and **paramDeclaration**.
