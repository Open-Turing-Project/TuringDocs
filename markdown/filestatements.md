#File Statements
##File Commands

**open**   open a file
**close**   close a file
**put**   write alphanumeric text to a file
**get**   read alphanumeric text from a file
**write**   binary write to a file
**read**   binary read from a file
**seek**   move to a specified position in a file
**tell**   report the current file position
**eof**   check for end of file
##File Command Syntax
`**open** : _streamNo_, _fileName_, _ioCapability_ {, _ioCapability_ }`
_ioCapability_ is one of **get**, **put**, **read**, **write**, **seek**, **mod**
**put** or **write** capability will cause any existing fileto be truncated to zero length unless the **mod** capability is also specified.
**seek** capability is needed to use **seek** or **tell**commands.


`**close** : _streamNo_**get** : _streamNo_ , _getItem_ { , _getItem_ }**put** : _streamNo_ , _putItem_ { , _putItem_ }**read** : _streamNo_ [ : _fileStatus_ ] , _readItem_ { , _readItem_ }**write** : _streamNo_[ : _fileStatus_ ] , _writeItem_ {, _writeItem_ }**seek** : _streamNo_ , _filePosition_    or   **seek** : _streamNo_ , ***tell** : _streamNo_ , _filePositionVar_eof ( _streamNo_ ) : **boolean**             (This is a function)`##Appending to a Text File
`_% Open the file for **put**, but do not erase it_**open** : _streamNo_, _fileName_, **put** { , **get** }, **mod**_% Move the file pointer to the end of the file_**seek** : _streamNo_, *`
