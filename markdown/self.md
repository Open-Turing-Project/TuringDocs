
# self

## Syntax
**self**

## Description
The **self** function produces a pointer to the current object. This function can be used only inside a class declaration. See **class**.


## Example
Enter the current object onto a list of displayable objects. The module called _displayable_ has exported a procedure called _enter_ whose parameter type is **pointer** **to** **anyclass**. Since **self** is a pointer to _C_ and _C_ is a descendant of **anyclass**, it is legal to pass **self** to _displayable.enter_.

        class C
            import displayable
            
            displayable.enter ( self ) 
            
        end C
## Details
It is illegal to call the exported entries of a class until the current object has been completely initialized, so, many calls to the current object using self will not be legal.

The notation to call exported subprogram _p_ of an enclosing class _C_ or of its ancestor _D_, is _C.p_ or _D.p_. Calls of this form, which can appear only within class _C_, call the subprogram in _C_ (or in _D_ in the case of _D.p_) regardless of the object type, or of any overriding, or of the status of initialization.

