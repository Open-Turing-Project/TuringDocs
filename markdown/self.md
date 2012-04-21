
#self

##Syntax
**self**

##Description
The **self** function produces a pointer to the current object. This function can be used only inside a class declaration. See **class**.

##Example
Enter the current object onto a list of displayable objects. The module called *displayable* has exported a procedure called *enter* whose parameter type is **pointer** **to** **anyclass**. Since **self** is a pointer to *C* and *C* is a descendant of **anyclass**, it is legal to pass **self** to *displayable.enter*.
        class C
            import displayable
            
            displayable.enter ( self ) 
            
        end C
##Details
It is illegal to call the exported entries of a class until the current object has been completely initialized, so, many calls to the current object using self will not be legal.
The notation to call exported subprogram *p* of an enclosing class *C* or of its ancestor *D*, is *C.p *or *D.p*. Calls of this form, which can appear only within class *C*, call the subprogram in *C* (or in *D* in the case of *D.p*) regardless of the object type, or of any overriding, or of the status of initialization.
