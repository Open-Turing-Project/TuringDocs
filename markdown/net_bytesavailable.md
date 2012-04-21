
#Net.BytesAvailable

##Syntax
**Net.BytesAvailable **(*netStream* : **int**) : **int**



##Description
Returns the number of bytes available for reading from the net stream specified by the *netStream* parameter.



##Details
The **Net** module requires a TCP/IP stack to be installed and operating in order to function. It does not communicate using any other protocols
It is possible for Firewalls to interfere with the actions of the **Net** module, preventing connections from taking place.



##Status
Exported qualified.
This means that you can only call the function by calling **Net.BytesAvailable**, not by calling **BytesAvailable**.



##See also
**[net_charavailable.html](Net.CharAvailable)**, **[net_lineavailable.html](Net.LineAvailable)**, and **[net_tokenavailable.html](Net.TokenAvailable)**.


