
#Config.Lang

##Syntax
**Config.Lang** (*langCode* : **int**) : **int**

##Description
**Config.Lang** returns information about the language and the limitations of the implementation that the program is currently running. The parameter *langCode* determines what sort of information is passed back. *langCode* has a number of possible values, all summarized by a set of predefined constants.
At the time of this writing, the following constants were defined:
*clRelease* return the current release number of the environment (e.g. 4.02 = 400).*clLanguageVersion* return the current version number of the language (e.g. 1.81 = 181).*clMaxNumStreams* return the maximum number of I/O streams (used by the **open** and **close** statements) that can be opened at once.*clMaxNumDirStreams* return the maximum number of directory streams that can be opened at once.*clMaxNumRunTimeArgs* return the maximum number of run-time arguments.

##Example
This program prints the current environment version.
        const version : int := Config.Lang (clLanguageVersion)
        put "The language version number is ", version
##Status
Exported qualified.
This means that you can only call the function by calling **Config.Lang**, not by calling **Lang**.
