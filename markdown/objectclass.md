
#objectclass

##Syntax
**objectclass** ( _pointerExpn_ )


##Description
The **objectclass** attribute is used to find the class of an object located by a pointer. The _pointerExpn_ must be an expression that is a pointer to a class.


##Example
See **class** for an example of classes and inheritance, in which a class called _TextFile_ is inherited by a class called _Device_. The _Device_ class adds a new exported procedure called _ioCtl_. In the present example, **objectclass** is used to test to make sure that the _textFilePtr_ currently locates an object that was created as a _Device_ (or as a descendant of _Device_). The notation _Device(textFilePtr)_ converts the pointer to be a pointer to a _Device_ so that _ioCtl_ can be called.

        var textFilePtr : ^ TextFile
        
        if objectclass ( textFilePtr ) >= Device then
            % Can safely treat object as a Device
            Device ( textFilePtr ) . ioCtl
            
        end if
##Details
This example uses the class comparison operator >= which means "is a descendant of". See **class**.

You can only use **objectclass**  in class comparisons. In particular, **objectclass** cannot be used to declare pointers. For example, this: 

is not allowed.

        var p : ^objectclass (q)
