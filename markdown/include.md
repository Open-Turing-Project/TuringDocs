
#include

##Syntax
An _includeConstruct_ is:


**include** _fileName_



##Description
An **include** is used to copy parts of  files so that they become part of the Turing program. This copying is temporary, that is, no files are changed. The file name must be an explicit string constant such as "stdstuff".


##Example
On IBM PC compatible computers, there are arrow keys that produce character values such as 200 and 208. Let us suppose that a file called _arrows_ contains definitions of these values:

These definitions can be included in any program in the following manner:

        const upArrow := 200
        const downArrow := 208
        const rightArrow := 205
        const leftArrow := 203        include "arrows"
        
        var ch : string ( 1 )
        getch ( ch )                % Read one character
        case ord ( ch ) of
            label upArrow :
                handle up arrow
            label downArrow :
                handle down arrow
            label rightArrow :
                handle right arrow
            label leftArrow :
                handle left arrow
            label :
                handle any other key
        end case
##Details
An include file can itself contain **include** constructs. This can continue to any level, although a circular pattern of includes would be a mistake, as it would lead to an infinitely long program.

It is common to save procedures, functions and modules in separate files. The files are collected together using **include**.


##Details
If the filename in the **include** statement starts with a "%", then Turing searches the system directory for the file. See the editor reference for the environment to see how to set the system directory. This method can be used to allow the system administrator to easily supply a set of routines in a file to a large number of users by placing it in one easy-to-find location.


##Example
If the system directory is set to "C:\TURING", then the line

will include the file "C:\TURING\SORTING.T" in the program. 

        include "%sorting.t"
##Details
Under OOT, there are several system directories available. The "%oot" directory is the directory where all the OOT system files are located. The "%home" directory is the user's home directory.


##Example
If the oot directory is set to "/usr/local/lib/oot" then the line

will include the file "/usr/local/lib/oot/teacher/sorting.t" in the program. 

        include "%oot/teacher/sorting.t"
