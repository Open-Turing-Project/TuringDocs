
#Error

##Description
This unit contains the predefined subprograms that deal with errors returned from other predefined subprograms.
All routines in the **Error** unit are exported qualified (and thus must be prefaced with "**Error.**").
The constants representing the possible errors returned by this module can be found in the **ErrorNum** module.



##Entry Points

[error_last.html](**Last**) Returns the (integer) error code produced by the last call to a predefined subprogram.
[error_lastmsg.html](**LastMsg**) Returns the error string produced by the last call to a predefined subprogram. 
[error_laststr.html](**LastStr**) Returns the string version of the error constant produced by the last call to a predefined subprogram. 
[error_msg.html](**Msg**) Returns the string that corresponds to a specified error code.
[error_str.html](**Str**) Returns the string version of the error constant that corresponds to a specified error code.
[error_trip.html](**Trip**) This causes the specified error code to be set.
[error_tripmsg.html](**TripMsg**) This causes the specified error code and error message to be set.
[error_halt.html](**Halt**) This causes execution to halt with the specified error message.


