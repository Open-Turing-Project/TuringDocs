
# Config.Lang

## Syntax
**Config.Lang** (_langCode_ : **int**) : **int**

## Description
**Config.Lang** returns information about the language and the limitations of the implementation that the program is currently running. The parameter _langCode_ determines what sort of information is passed back. _langCode_ has a number of possible values, all summarized by a set of predefined constants.

At the time of this writing, the following constants were defined:


_clRelease_   return the current release number of the environment (e.g. 4.02 = 400).
_clLanguageVersion_   return the current version number of the language (e.g. 1.81 = 181).
_clMaxNumStreams_   return the maximum number of I/O streams (used by the **open** and **close** statements) that can be opened at once.
_clMaxNumDirStreams_   return the maximum number of directory streams that can be opened at once.
_clMaxNumRunTimeArgs_   return the maximum number of run-time arguments.



## Example
This program prints the current environment version.

        const version : int := Config.Lang (clLanguageVersion)
        put "The language version number is ", version
## Status
Exported qualified.

This means that you can only call the function by calling **Config.Lang**, not by calling **Lang**.

