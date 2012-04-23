
#Net.WaitForConnection

##Syntax
**Net.WaitForConnection** (_port_ : **int**, **var** _netAddr_ : **string**) : **int**


##Description
Listens for a connection at the port specified by the _port_ parameter. When another program connects to the port, then the function returns. The address of the connecting machine is specified in the _netAddr_ parameter and the **Net.WaitForConnection** returns a network stream descriptor which can be used with the **put**, **get**, **read**, and **write** statements and **eof** function to send and receive data to the connecting program. It is also the parameter used for the **Net.CloseConnection**, **Net.BytesAvailable**, **Net.CharAvailable**, **Net.LineAvailable**, and **Net.TokenAvailable** functions.

In OOT, the connection to a port is made with the **Net.OpenConnection** function.

The _netAddr_ parameter is a string specifying the net address of the machine that connected to the port. It is the machines numerical address.

In general, system program listen in on ports with numbers below 1024. Port numbers above 1024 are generally available for use by user created programs.

The program will wait for indefinitely for a connection to made to the port.


##Details
The **Net** module requires a TCP/IP stack to be installed and operating in order to function. It does not communicate using any other protocols

It is possible for Firewalls to interfere with the actions of the **Net** module, preventing connections from taking place.


##Example
See **Net.OpenConnection** for an example of **Net.WaitForConnection**.


##Status
Exported qualified.

This means that you can only call the function by calling **Net.WaitForConnection**, not by calling **WaitForConnection**.


##See also
**[net_openconnection.html](Net.OpenConnection)** and **[net_closeconnection.html](Net.CloseConnection)**.

