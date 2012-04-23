
#Net.CloseConnection

##Syntax
**Net.CloseConnection** (_netStream_ : **int**)


##Description
Closes a network connection made with **Net.OpenConnection** or **Net.WaitForConnection**. After the connection is closed, the net stream cannot be used for any purpose on either side of the connection.


##Details
The **Net** module requires a TCP/IP stack to be installed and operating in order to function. It does not communicate using any other protocols

It is possible for Firewalls to interfere with the actions of the **Net** module, preventing connections from taking place.


##Example
The following program fragment connects to port 5300 on the machine specified by _netAddress_, sends the work OK to it and closes the connection.

        netStream := Net.OpenConnection (netAddress, chatPort)
        if netStream <= 0 then
            put "Unable to connect to ", netAddress
            return
        end if
        put : netStream, "OK"
        Net.CloseConnection (netStream)
##Status
Exported qualified.

This means that you can only call the function by calling **Net.CloseConnection**, not by calling **CloseConnection**.


##See also
**[net_openconnection.html](Net.OpenConnection)** and **[net_waitforconnection.html](Net.WaitForConnection)**.

