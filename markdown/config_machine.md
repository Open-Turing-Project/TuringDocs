
# Config.Machine

## Syntax
**Config.Machine** (_machineCode_ : **int**) : **int**

## Description
**Config.Machine** returns information about the machine that the program is currently running on. The parameter _machineCode_ determines what sort of information is passed back. _machineCode_ has a number of possible values, all summarized by a set of predefined constants.

At the time of this writing, the following constants were defined:


_cmProcessor_   return an encoding of the processor number.
_cmFPU_   return 1 if there is an FPU installed, 0 if not.
_cmOS_   return the current version number of the operating system (e.g. 6.07 = 607).



## Example
This program prints whether the machine has an FPU or not.

        if Config.Machine (cmFPU) = 1 then
            put "The machine has an FPU installed"
        else
            put "The machine does not have an FPU installed"
        end if
## Status
Exported qualified.

This means that you can only call the function by calling **Config.Machine**, not by calling **Machine**.

