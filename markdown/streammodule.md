
# Stream

## Description
This unit contains the predefined subprograms that deal with I/O streams. The basic I/O in Turing is done with I/O statements. However, extra functions are all part of the **Stream** unit.

All routines in the **Stream** unit are exported qualified (and thus must be prefaced with "**Stream.**"), with the exception of **eof** which is part of the language but conceptually part of this unit and is considered to be exported unqualified.


## Entry Points

[**eof**](stream_eof.html)*   Determines if the end of file has been reached.
[**Flush**](stream_flush.html)   Flushes a specified stream.
[**FlushAll**](stream_flushall.html)   Flushes all open output streams.


* Part of the language, conceptually part of the **Stream** unit.

