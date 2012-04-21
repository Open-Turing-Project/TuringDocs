
#Dir

##Description
This unit contains the predefined subprograms that deal with directories. You can use these subprograms to list the contents of directories, create directories, change directories and return the current directory.
All routines in the Dir module are exported qualified (and thus must be prefaced with "**Dir.**").

##Entry Points
[dir_open.html](**Open**) Opens a directory stream in order to get a listing of the directory contents.[dir_get.html](**Get**) Gets the next file name in the directory listing.[dir_getlong.html](**GetLong**) Gets the next file name and other information in the directory listing.[dir_close.html](**Close**) Closes the directory stream.[dir_create.html](**Create**) Creates a new directory.[dir_delete.html](**Delete**) Deletes a directory (must be empty).[dir_change.html](**Change**) Changes the current execution directory.[dir_current.html](**Current**) Returns the current execution directory.[dir_exists.html](**Exists**) Returns  whether a directory exists.

##Details
Path names in Turing can be expressed using either forward slashes or backslashes. For example, **Dir.Change ("d:\\turing files\\assignment 3")** or **Dir.Change ("d:/turing files/assignment 3")**are both legal. Note that backslashes must be doubled in string literals. The "." directory represent the current directory (as in **Dir.Open (".")**), and the ".." directory represents the parent directory. For example,if the current execution directory is "d:/turing files/assignment 3", then **Dir.Change ("..")** changesthe current execution directory to "d:/turing files".

##See also
[filemodule.html](**File**) unit for more explanation of the different ways of specifying a path name of a file or directory under the different operating systems.
