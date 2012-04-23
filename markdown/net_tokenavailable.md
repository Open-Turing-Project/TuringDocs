
#Net.TokenAvailable

##Syntax
**Net.TokenAvailable** (_netStream_ : **int**) : **boolean**


##Description
Returns **true** if a line of input is waiting to be read from the net stream specified by the _netStream_ parameter. If **Net.TokenAvailable** returns **true**, then a single token (character surrounded by whitespace) can be read from the stream without blocking.


##Details
The **Net** module requires a TCP/IP stack to be installed and operating in order to function. It does not communicate using any other protocols

It is possible for Firewalls to interfere with the actions of the **Net** module, preventing connections from taking place.


##Example
The following program fragment reads a character from _netStream_ only if there is one waiting to be read.

        if Net.TokenAvailable (netStream) then
            var token : string
            get : netStream, token
            put token
        end if
##Status
Exported qualified.

This means that you can only call the function by calling **Net.TokenAvailable**, not by calling **TokenAvailable**.


##See also
**[net_bytesavailable.html](Net.BytesAvailable)**, **[net_charavailable.html](Net.CharAvailable)**, and **[net_lineavailable.html](Net.LineAvailable)**.

