
# Net

## Description
The Net module allows TCP/IP equipped machines to communicate. In the current implementation (WinOOT 3.0), this is available only under Win32 (Windows 95, 98, NT and later).

To allow two machines to communicate, there must be a server (which calls **Net,WaitForConnection**) and a client (which calls **Net.OpenConnection**). The server waits until a client connects and then starts communication between the two. When a connection is established, a net stream is returned that can be used in the same fashion as a file stream (i.e. using **put**s and **get**s**)**.  Once the connection is finished, the programs call **Net.CloseConnection**.

For ease of reading web pages, the **Net.OpenURLConnection** opens up a URL for reading with the **get** statement. It is up to the user program to interpret the HTML or file located at the URL.

All subprograms in the **Net** unit are exported qualified (and thus must be prefaced with "**Net.**").


## Entry Points

[**WaitForConnection**](net_waitforconnection.html)   Waits until a client connects to a specified port.  
[**OpenConnection**](net_openconnection.html)   Opens a connection to a specified machine.  
[**OpenURLConnection**](net_openurlconnection.html)   Opens a connection to a file specified by a URL.  
[**CloseConnection**](net_closeconnection.html)   Closes a specified connection.  
[**BytesAvailable**](net_bytesavailable.html)   Returns the number of bytes available to be read from a net stream.  
[**CharAvailable**](net_charavailable.html)   Returns true if there is a character available to be read from a net stream.  
[**LineAvailable**](net_lineavailable.html)   Returns true if there is a line of text available to be read from a net stream.  
[**TokenAvailable**](net_tokenavailable.html)   Returns true if there is a token available to be read from a net stream.  
[**HostAddressFromName**](net_hostaddressfromname.html)   Returns a host's address given its host name.  
[**HostNameFromAddress**](net_hostnamefromaddress.html)   Returns a host's name given its address.  
[**LocalAddress**](net_localaddress.html)   Returns the host name of the local machine.  
[**LocalName**](net_localname.html)   Returns the TCP/IP address of the local machine.  
