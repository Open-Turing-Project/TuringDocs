
#program

##Syntax
A _program_ is:

_statementsAndDeclarations_




##Description
A Turing program consists of a list of statements and declarations.



##Example
This is a complete Turing program. It outputs _Alan M. Turing_.


        put "Alan M. Turing"
##Example
This is a complete Turing program. It outputs a triangle of stars.


        var stars : string := "*"
        loop
            put stars
            stars := stars + "*"
        end loop
##Example
This is a complete Turing program. It outputs _Hello_ once and _Goodbye_ twice.


        procedure sayItAgain ( what : string, n : int )
            for i : 1 .. n
                put what
            end for
        end sayItAgain
        
        sayItAgain ( "Hello", 1)
        sayItAgain ( "Goodbye", 2 )
##Details
In a program there can be many units (see **unit**), one of which is the program (called the main program), the others of which are modules, monitors and classes. The main program is optionally preceded by an **import** list, which lists the units that it uses.



##See also
**[import.html](import)** list.


