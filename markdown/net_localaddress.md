
#Net.LocalAddress

##Syntax
**Net.LocalAddress** : **string**



##Description
Returns the TCP/IP numeric address of the machine the program is running on. The numeric address is of the form _xxx_._yyy_._zzz_._www_ where each segment is a number from 0 to 255.



##Details
The **Net** module requires a TCP/IP stack to be installed and operating in order to function. It does not communicate using any other protocols
It is possible for Firewalls to interfere with the actions of the **Net** module, preventing connections from taking place.



##Example
The following program prints out the TCP/IP numeric address of the current machine.


        put "Your machine address is ", Net.LocalAddress
##Status
Exported qualified.
This means that you can only call the function by calling **Net.LocalAddress**, not by calling **LocalAddress**.



##See also
**[net_localname.html](Net.LocalName)**.


