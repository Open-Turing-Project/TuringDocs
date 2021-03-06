
# Net.BytesAvailable

## Syntax
**Net.BytesAvailable** (_netStream_ : **int**) : **int**

## Description
Returns the number of bytes available for reading from the net stream specified by the _netStream_ parameter.


## Details
The **Net** module requires a TCP/IP stack to be installed and operating in order to function. It does not communicate using any other protocols

It is possible for Firewalls to interfere with the actions of the **Net** module, preventing connections from taking place.


## Status
Exported qualified.

This means that you can only call the function by calling **Net.BytesAvailable**, not by calling **BytesAvailable**.


## See also
**[Net.CharAvailable](net_charavailable.html)**, **[Net.LineAvailable](net_lineavailable.html)**, and **[Net.TokenAvailable](net_tokenavailable.html)**.

