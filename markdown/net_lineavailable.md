
#Net.LineAvailable

##Syntax
**Net.LineAvailable **(*netStream* : **int**) : **boolean**

##Description
Returns **true** if a line of input is waiting to be read from the net stream specified by the *netStream* parameter. If **Net.LineAvailable** returns **true**, then a line of input can be read from the stream without blocking.

##Details
The **Net** module requires a TCP/IP stack to be installed and operating in order to function. It does not communicate using any other protocols
It is possible for Firewalls to interfere with the actions of the **Net** module, preventing connections from taking place.

##Example
The following program fragment reads a character from *netStream* only if there is one waiting to be read.
        if Net.LineAvailable (netStream) then
            var line : string
            get : netStream, line : *
            put line
        end if
##Status
Exported qualified.
This means that you can only call the function by calling **Net.LineAvailable**, not by calling **LineAvailable**.

##See also
**[net_bytesavailable.html](Net.BytesAvailable)**, **[net_charavailable.html](Net.CharAvailable)**, and **[net_tokenavailable.html](Net.TokenAvailable)**.
