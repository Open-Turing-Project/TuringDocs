
#objectclass

##Syntax
**objectclass** ( *pointerExpn* )

##Description
The **objectclass** attribute is used to find the class of an object located by a pointer. The *pointerExpn* must be an expression that is a pointer to a class.

##Example
See **class** for an example of classes and inheritance, in which a class called *TextFile* is inherited by a class called *Device*. The *Device* class adds a new exported procedure called *ioCtl*. In the present example, **objectclass** is used to test to make sure that the *textFilePtr* currently locates an object that was created as a *Device* (or as a descendant of *Device*). The notation *Device(textFilePtr) *converts the pointer to be a pointer to a *Device *so that *ioCtl *can be called.
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
