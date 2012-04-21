
#Net.CharAvailable

##Syntax
**Net.CharAvailable **(*netStream* : **int**) : **boolean**

##Description
Returns **true** if a character is waiting to be read from the net stream specified by the *netStream* parameter. If **Net.CharAvailable** returns **true**, then a single character can be read from the stream without blocking.

##Details
The **Net** module requires a TCP/IP stack to be installed and operating in order to function. It does not communicate using any other protocols
It is possible for Firewalls to interfere with the actions of the **Net** module, preventing connections from taking place.

##Example
The following program fragment reads a character from *netStream* only if there is one waiting to be read.
        if Net.CharAvailable (netStream) then
            var ch : char
            get : netStream, ch
            put ch ..
        end if
##Status
Exported qualified.
This means that you can only call the function by calling **Net.CharAvailable**, not by calling **CharAvailable**.

##See also
**[net_bytesavailable.html](Net.BytesAvailable)**, **[net_lineavailable.html](Net.LineAvailable)**, and **[net_tokenavailable.html](Net.TokenAvailable)**.
