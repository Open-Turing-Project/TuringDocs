
#Net.HostAddressFromName

##Syntax
**Net.HostAddressFromName **(     *hostName* : **string**) : **string**



##Description
Returns** **the numeric TCP/IP address of the machine whose hostname is specified by the *hostName* parameter.



##Details
The **Net** module requires a TCP/IP stack to be installed and operating in order to function. It does not communicate using any other protocols
It is possible for Firewalls to interfere with the actions of the **Net** module, preventing connections from taking place.



##Example
The following program prints out the hostname of the current machine.


        var hostName : string := "www.holtsoft.com"
        put "The machine address of ", hostName , " is ", 
            Net.HostAddressFromName (hostName)
##Status
Exported qualified.
This means that you can only call the function by calling **Net.HostAddressFromName**, not by calling **HostAddressFromName**.



##See also
**[net_hostnamefromaddress.html](Net.HostNameFromAddress)**.


