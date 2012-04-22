
#Sys.Exec

##Syntax
**Sys.Exec** ( _command_ : **string** ) : **boolean**



##Description
The **Sys.Exec** function** **is used to** **execute an application or more often, open a data file with its associated application. **Sys.Exec** can be used to launch such programs as the Internet Browser by specifying a URL. **Sys.Exec** launches the application associated with file's suffix. (In essence, it performs the same operation as if a user double clicked on the file.)



##Example
This program launches an internet browser and points it to Holt Software's home page. It then launches a movie using the default video player.


        if not Sys.Exec ("http://www.holtsoft.com/turing/support") then
            put "The Sys.Exec call failed"
            put "Error: ", Error.LastMsg
        end if
        if not Sys.Exec ("skate.avi") then
            put "The Sys.Exec call failed"
            put "Error: ", Error.LastMsg
        end if
##Details
When the **Sys.Exec** procedure is used, the executing program continues execution immediately while the launched application is running. 



##Status
Exported qualified.
This means that you can only call the function by calling **Sys.Exec**, not by calling **Exec**.



##See also
**[sys_nargs.html](Sys.Nargs)**, **[sys_fetcharg.html](Sys.FetchArg)** and **[sys_getenv.html](Sys.GetEnv)** functions.


