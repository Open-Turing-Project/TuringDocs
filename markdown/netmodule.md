
#Net

##Description
The Net module allows TCP/IP equipped machines to communicate. In the current implementation (WinOOT 3.0), this is available only under Win32 (Windows 95, 98, NT and later).
To allow two machines to communicate, there must be a server (which calls **Net,WaitForConnection**) and a client (which calls **Net.OpenConnection**). The server waits until a client connects and then starts communication between the two. When a connection is established, a net stream is returned that can be used in the same fashion as a file stream (i.e. using **put**s and **get**s**)**.  Once the connection is finished, the programs call **Net.CloseConnection**.
For ease of reading web pages, the **Net.OpenURLConnection** opens up a URL for reading with the **get** statement. It is up to the user program to interpret the HTML or file located at the URL.
All subprograms in the **Net **unit are exported qualified (and thus must be prefaced with "**Net.**").



##Entry Points

[net_waitforconnection.html](**WaitForConnection**) Waits until a client connects to a specified port.
[net_openconnection.html](**OpenConnection**) Opens a connection to a specified machine.
[net_openurlconnection.html](**OpenURLConnection**) Opens a connection to a file specified by a URL.
[net_closeconnection.html](**CloseConnection**) Closes a specified connection.
[net_bytesavailable.html](**BytesAvailable**) Returns the number of bytes available to be read from a net stream.
[net_charavailable.html](**CharAvailable**) Returns true if there is a character available to be read from a net stream.
[net_lineavailable.html](**LineAvailable**) Returns true if there is a line of text available to be read from a net stream.
[net_tokenavailable.html](**TokenAvailable**) Returns true if there is a token available to be read from a net stream.
[net_hostaddressfromname.html](**HostAddressFromName**) Returns a host's address given its host name.
[net_hostnamefromaddress.html](**HostNameFromAddress**) Returns a host's name given its address.
[net_localaddress.html](**LocalAddress**) Returns the host name of the local machine.
[net_localname.html](**LocalName**) Returns the TCP/IP address of the local machine.


