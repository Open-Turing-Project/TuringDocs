
# Error

## Description
This unit contains the predefined subprograms that deal with errors returned from other predefined subprograms.

All routines in the **Error** unit are exported qualified (and thus must be prefaced with "**Error.**").

The constants representing the possible errors returned by this module can be found in the **ErrorNum** module.


## Entry Points

[**Last**](error_last.html)   Returns the (integer) error code produced by the last call to a predefined subprogram.
[**LastMsg**](error_lastmsg.html)   Returns the error string produced by the last call to a predefined subprogram. 
[**LastStr**](error_laststr.html)   Returns the string version of the error constant produced by the last call to a predefined subprogram. 
[**Msg**](error_msg.html)   Returns the string that corresponds to a specified error code.
[**Str**](error_str.html)   Returns the string version of the error constant that corresponds to a specified error code.
[**Trip**](error_trip.html)   This causes the specified error code to be set.
[**TripMsg**](error_tripmsg.html)   This causes the specified error code and error message to be set.
[**Halt**](error_halt.html)   This causes execution to halt with the specified error message.
