#File Statements
##File Commands

**open** open a file
**close** close a file
**put** write alphanumeric text to a file
**get** read alphanumeric text from a file
**write** binary write to a file
**read** binary read from a file
**seek** move to a specified position in a file
**tell** report the current file position
**eof** check for end of file
##File Command Syntax
`**open** : _streamNo_, _fileName_, _ioCapability_ {, _ioCapability_ }`
_ioCapability_ is one of **get**, **put**, **read**, **write**, **seek**, **mod**



`**close** : _streamNo_**put** : _streamNo_ , _putItem_ { , _putItem_ }**write** : _streamNo_[ : _fileStatus_ ] , _writeItem_ {, _writeItem_ }**tell** : _streamNo_ , _filePositionVar_`##Appending to a Text File
`_% Open the file for **put**, but do not erase it__% Move the file pointer to the end of the file_**seek** : _streamNo_, *`
