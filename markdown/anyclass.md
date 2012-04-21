
#anyclass

##Syntax
**anyclass**

##Description
There is a predefined class called **anyclass**, which is the root of the expansion tree. All classes that do not have **inherit** lists are considered to be expansions of **anyclass**. The main purpose of **anyclass** is to allow pointers that can locate objects of any class.

##Example
Here is the declaration of a pointer *p *that can locate an object of any class.
Assuming *stack* is a class, this creates a *stack* object and places its location in *q *and *p*. The compiler will not allow a call to *stack*'s exported subprograms using *p* directly, as in:
An assignment from *p* to *q* is legal, as in:
This implies a run time check to make sure that *p* locates an object that is a *stack* (or a descendant of a *stack*).
Here is a way to call a subprogram exported from *stack* using *p*:
This checks to see that *p* locates a *stack* object (or a descendant) before calling the *stack* operation *push*.
        var p : pointer to anyclass     % Short form: var p : ^ anyclass
        var q : pointer to stack        % Short form: var q : ^ stack
        new q               % Create a stack object
        p := q              % Legal because p's class
                            % is an ancestor of q's class        p -> push (14)      % ILLEGAL!  anyclass has no operations        q := p  % Checks that p locates a stack object (or descendant)        stack (p) . push (14)   % Checks that p locates a stack object
##Details
It is legal to create objects of the class called **anyclass**, but this is not of much use, because there is nothing you can do with these objects (they have no operations). It is legal to assign these objects to other objects of the same class (**anyclass**), although this accomplishes nothing.

##See also
**[objectclass.html](objectclass)**, which takes a class pointer and produces the class of the object located by the pointer. This is used for testing to determine the class of the object located by a pointer.
See also **[class.html](class)**. See also **[export.html](export)** list, **[import.html](import)** list, **[inherit.html](inherit)** list, **[implement.html](implement)** list and **[implement_by.html](implement by)** list.
