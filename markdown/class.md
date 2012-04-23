
# class

## Syntax
A classDeclaration is:   [ **monitor** ]   **class** _id_     [ **inherit** _inheritItem_ ]     [ **implement** _implementItem_ ]     [ **implement** **by** _implementByItem_ ]     [ **import** [ **var** ] _importItem_ {, [ **var** ] _importItem_ } ]     [ **export** [ _howExport_ ] _id_ {, [ _howExport_ ] _id_ } ]     _statementsAndDeclarations_   **end** _id_

## Description
A class declaration defines a template for a package of variables, constants, types, subprograms, etc. The name of the class (_id_) is given in two places, just after **class** and just after **end**. Items declared inside the class can be accessed outside of the class only if they are exported. Items from outside the class that are to be used in the class, need to be imported (unless they are predefined or pervasive). Instances (objects) of a class are created using the **new** statement. Each object is essentially a module located by a pointer.


## Example
This class is a template for creating objects, each of which is a stack of strings. (See the **module** description for the corresponding module that implements a single stack of strings.)

        class stackClass    % Template for creating individual stacks
            export push, pop
        
            var top : int := 0
            var contents : array 1 .. 100 of string
        
            procedure push (s : string)
                top := top + 1
                contents (top) := s
            end push
        
            procedure pop (var s : string)
                s := contents (top)
                top := top - 1
            end pop
        end stackClass
        
        var p: pointer to stackClass    % Short form: var p: ^stackClass
        new stackClass, p           % Short form: new p
        p -> push ("Harvey")
        var name : string
        p -> pop (name)         % This sets name to be Harvey
## Details
The **new** statement is used to create objects of a class. Many instances of a class can exist at a given time, each located by a pointer. The **free** statement is used to destroy objects that are no longer of use. Turing does not support _garbage collection_ (automatic recovery of space belonging to inaccessible objects).

See **modules** for a discussion of importing, exporting and related concepts. When an object is created by **new**, its initialization code is executed. In this example, the object's _top_ variable is set to 0. As is true in modules, an exported subprogram of an object's class cannot be called until the object is completely initialized.

You are not allowed to create variables of a class, as in:

If the **monitor** keyword is present (just before **class**), the objects are monitors. This means that only one process at a time can be active in the object. See **monitor** and **process**.

Inherit lists are used to specify inheritance. See **inherit** list. Implement and implement-by lists provide a special kind of expansion which supports the separation of an interface from its implementation. See **implement** list and **implement-by** list. A class cannot contain both an inherit and an implement list.

Class declarations can be nested inside modules and monitors but cannot be nested inside other classes or inside procedures or functions. A class must not contain a **bind** as one of its (outermost) declarations. A **return** statement cannot be used as one of the (outermost) statements in a class.

A class cannot export variables (or run time constants) as **unqualified** (because each object has a distinct set of variables).

The syntax of a _classDeclaration_ presented above has been simplified by leaving out **pre**, **invariant** and **post** clauses. The full syntax which supports **pre**, **invariant** and **post** is the same as that for modules. The initialization of classes is the same as that for modules. See **module**.

        var s : stack       % Not legal!
## Example
We will give an example in which a subprogram in one class overrides the corresponding subprogram in a class that is being inherited. The example is based on a program that implements a file system inside an operating system. All files have _open_, _close_, _read_ and _write_ operations. Some files, called _Device_ files, also have an operation called _ioCtl_ (input/output control). The kind of file determines the implementation method. Here is the expansion (inheritance) hierarchy among the classes of files.





![Doc Image](class01.gif)

The class called _File_ gives the interface to all possible kinds of files. The _TextFile_ class implements files that are text (ASCII characters). The _Device_ class gives the interface to all files that have the _ioCtl_ operation in addition to _open_, _close_, _read_ and _write_. The _Tape_ and _Disk_ classes implement files that are actually physical tapes or disks. Here is the declaration of the _File_ class:

The _TextFile_ class implements the _File_ interface by giving variables declarations and procedure bodies for ASCII files:

Objects to represent individual text files are created using the **new** statement:

The _Device_ class adds the _ioCtl_ procedure to the _File_ interface.

The _Disk_ class provides data and procedures to implement a file that is actually a disk (the _Tape_ class is analogous):

A pointer that can locate any kind of _File_ object is declared this way:

This may locate, for example, a _TextFile_:

This assignment is allowed because _filePtr'_s corresponding class (_File_) is an ancestor of _textFilePtr'_s corresponding class (_TextFile_). It is guaranteed that the object now located by _filePtr_ supports a version of all the operations of a _File_ (_open_, _close_, _read_ and _write_).

When we call a procedure in the object located by _filePtr_, the actual procedure called will depend upon the object:

For example, if _filePtr_ currently locates a _Disk_ file, this will call the _read_ procedure from the _Disk_ class. This is an example of _dynamic_ _binding_ in which  the version of _read_ to be used is selected at run time and this choice is based on the object located by _filePtr_. This is called _polymorphism_, because _File_ objects can have more than one form.

        class File
            export open, close, read, write
            deferred procedure open ( parameters for open )
            deferred procedure close ( parameters for close )
            deferred procedure read ( parameters for read )
            deferred procedure write ( parameters for write )
        end File        class TextFile
            inherit File
            var internalTextFileData :
                 internal data for text files 
        
            body procedure open
                 body for open for text files 
            end open
        
             bodies for close, read and write procedures for text files
        end TextFile        var textFilePtr : ^ TextFile
                        % Pointer will locate a text file object
        new textFilePtr     % Create a text file object
        
        textFilePtr -> read ( actual parameters )  % Read text file        class Device
            inherit File
            export ioCtl
            deferred procedure ioCtl ( parameters for ioCtl )
        end Device        class Disk
            inherit Device
            var internalDiskFileData :  internal data for disk files
        
            body procedure open
                 body for open 
            end open
        
             bodies for close, read, write and ioCtl procedures for disk 
        end Disk        var filePtr : ^ File        filePtr := textFilePtr        filePtr -> read ( actual parameters )
## Example
As another example, consider class _C_, which contains headers and bodies for functions _f_ and _g_. _C_ exports functions _f_ and _g_. There is also a class _D_, which inherits from _C_. Class _D_ contains a body that overrides the body for _g_. _D_ also contains a header and body for function _h_. _D_ exports function _h_.

Pointer _p_ has been declared to locate an object of class _C_, but at runtime _p_ locates an object of class _D_. When p is used to call _f_, by means of _p_->_f_, the body of _f_, which appears in _C_, is invoked. When p is used to call _g_, by means of _p_->_g_, _g_'s overriding body in _D_ is invoked. Any attempt to use _p_ to call _h_ is illegal because _p_ can only be used to call functions that are exported from _C_.

        class C
            export f, g
        
            procedure f
                put "C's f"
            end f
        
            procedure g
                put "C's g"
            end g
        end C
        
        class D
            inherit C           % Inherit f and g
        
            body procedure g    % Overrides g in C
                put "*** D's g ***"
            end g
        
            procedure h
                put "*** D's h ***"
            end h
        end D

        var p : pointer to C    % p can point to any descendant of C
        new D, p        % p locates an object of class D
        p -> f          % Outputs "C's f"
        p -> g          % Outputs "*** D's g ***"
        p -> h          % Causes error "'h' is not in export list of 'C'"
## See also
**[module](module.html)**, **[monitor](monitor.html)** and **[unit](unit.html)**. See also **[import](import.html)** list, **[export](export.html)** list, **[implement](implement.html)** list, **[implement by](implement_by.html)** list, and **[inherit](inherit.html)** list. See also **[deferred](deferred.html)** subprogram. See also **[anyclass](anyclass.html)** and **[objectclass](objectclass.html)**.

