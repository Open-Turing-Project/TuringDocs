
#Net.OpenConnection

##Syntax
**Net.OpenConnection** (_netAddr_ : **string**, _port_ : **int**) : **int**



##Description
Attempts to open a connection to port specified by the _port_ parameter on the machine specified by _netAddr_ parameter. There must be a program listening to that port for the connection to be made. In OOT, this is done using the **Net.WaitForConnection** function.
If successful, **Net.OpenConnection** returns a network stream descriptor which can be used with the **put**, **get**, **read**, and **write** statements and **eof** function to send and receive data to the listening program. It is also the parameter used for the **Net.CloseConnection**, **Net.BytesAvailable**, **Net.CharAvailable**, **Net.LineAvailable**, and **Net.TokenAvailable** functions.
The _netAddr_ parameter is a string specifying the net address of the machine to be connected to. This can either be the full hostname or the numerical address.
In general, system program listen in on ports with numbers below 1024. Port numbers above 1024 are generally available for use by user created programs.
The program will wait for an indeterminate amount of time to make the connection. If it fails, it will return a non-positive value.



##Details
The **Net** module requires a TCP/IP stack to be installed and operating in order to function. It does not communicate using any other protocols
It is possible for Firewalls to interfere with the actions of the **Net** module, preventing connections from taking place.



##Example
The following program implements a "Chat" program. One user runs the program on their machine as a server, which waits for another machine to connect to it. The second user specifies the machine to connect to and then connects. The two can then type at each other.


        % The "Chat" program
        const chatPort : int := 5055
        var choice : int
        loop
            put "Enter 1 to run chat server"
            put "Enter 2 to run chat session"
            put "Choice: " ..
            get choice
            exit when choice = 1 or choice = 2
        end loop
        var netStream : int
        var netAddress : string
        
        if choice = 1 then
            netStream := Net.WaitForConnection (chatPort, netAddress)
        else
            put "Enter the address to connect to: " ..
            get netAddress
            netStream := Net.OpenConnection (netAddress, chatPort)
            if netStream <= 0 then
                put "Unable to connect to ", netAddress
                return
            end if
        end if
        Draw.Cls
        put "Connected to ", netAddress
        
        var localRow : int := 2
        var localCol : int := 1
        var remoteRow := maxrow div 2
        var remoteCol : int := 1
        var ch : char
        
        View.Set ("noecho")
        loop
            if hasch then
                ch := getchar
                put : netStream, ch
                if ch = '\n' then
                    localRow := localRow mod (maxrow div 2) + 1
                    localCol := 1
                    Text.Locate (localRow, localCol)
                    put "" % Clear to end of line
                    Text.Locate (localRow, localCol)
                else
                    Text.Locate (localRow, localCol)
                    put ch ..
                    localCol += 1
                end if
            end if
        
            if Net.CharAvailable (netStream) then
                get : netStream, ch
                if ch = '\n' then
                    remoteRow := remoteRow mod (maxrow div 2) +
                        1 + (maxrow div 2)
                    remoteCol := 1
                    Text.Locate (remoteRow, remoteCol)            put ""  % Clear to end of line
                    Text.Locate (remoteRow, remoteCol)
                else
                    Text.Locate (remoteRow, remoteCol)
                    put ch ..
                    remoteCol += 1
                end if
            end if
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **Net.OpenConnection**, not by calling **OpenConnection**.



##See also
**[net_waitforconnection.html](Net.WaitForConnection)** and **[net_closeconnection.html](Net.CloseConnection)**.


