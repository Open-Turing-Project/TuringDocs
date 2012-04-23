
# Joystick

## Description
This unit contains the predefined subprogram that deal with reading the joystick in a Turing program. The routines allow you to get the current joystick position and whether either one of the two buttons are pressed. 

All routines in the Joystick module are exported qualified (and thus must be prefaced with "**Joystick.**"). All the constants are exported unqualified and thus do not need the **Joystick** prefix.


## Entry Points

[**joystick**](joystick_joystick.html)**1**, **joystick2**   joystick name contants (exported unqualified)
[**GetInfo**](joystick_getinfo.html)   Reads the current value of a joystick and status of the joystick buttons.
