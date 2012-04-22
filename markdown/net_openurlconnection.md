
#Net.OpenURLConnection

##Syntax
**Net.OpenURLConnection** (_urlAddr_ : **string**) : **int**



##Description
Attempts to open a http connection to pthe URL (Universal Resource Locator) specified by the _urlAddr_.
If successful, **Net.OpenURLConnection** returns a network stream descriptor which can be used with the **get** statement and **eof** function to read the web page located at the URL.
The program will wait for an indeterminate amount of time to make the connection. If it fails, it will return a non-positive value.



##Details
The **Net** module requires a TCP/IP stack to be installed and operating in order to function. It does not communicate using any other protocols
It is possible for Firewalls to interfere with the actions of the **Net** module, preventing connections from taking place.



##Example
The following program prints out the contents of the file specified by the user.


        var url : string
        put "Enter the URL to load: " ..
        get url 
        
        var netStream : int
        var line : string
        
        netStream := Net.OpenURLConnection (url)
        if netStream <= 0 then
            put "Unable to connect to ", url
            return
        end if
        loop
            exit when eof (netStream)
            get : netStream, line
            put line
        end loop
        Net.CloseConnection (netStream)
##Status
Exported qualified.
This means that you can only call the function by calling **Net.OpenURLConnection**, not by calling **OpenURLConnection**.



##See also
**[net_closeconnection.html](Net.CloseConnection)**.


