
#Net.HostNameFromAddress

##Syntax
**Net.HostNameFromAddress **(     _hostAddr_ : **string**) : **string**



##Description
Returns** **the TCP/IP hostname of the machine whose numeric address is specified by the _hostAddr_ parameter.



##Details
The **Net** module requires a TCP/IP stack to be installed and operating in order to function. It does not communicate using any other protocols
It is possible for Firewalls to interfere with the actions of the **Net** module, preventing connections from taking place.



##Example
The following program prints out the hostname of the machine whose TCP/IP numeric address is "128.100.5.1".


        var hostAddr : string := "128.100.5.1"
        put "The machine name of ", hostAddr, " is ", 
            Net.HostNameFromAddress (hostAddr)
##Status
Exported qualified.
This means that you can only call the function by calling **Net.HostNameFromAddress**, not by calling **LocalName**.



##See also
**[net_hostaddressfromname.html](Net.HostAddressFromName)**.


