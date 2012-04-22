
#Net.LocalName

##Syntax
**Net.LocalName** : **string**



##Description
Returns the TCP/IP hostname of the machine the program is running on.



##Details
The **Net** module requires a TCP/IP stack to be installed and operating in order to function. It does not communicate using any other protocols
It is possible for Firewalls to interfere with the actions of the **Net** module, preventing connections from taking place.



##Example
The following program prints out the hostname of the current machine.


        put "Your machine name is ", Net.LocalName
##Status
Exported qualified.
This means that you can only call the function by calling **Net.LocalName**, not by calling **LocalName**.



##See also
**[net_localaddress.html](Net.LocalAddress)**.


