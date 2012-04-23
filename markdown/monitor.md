
# monitor

## Syntax
A _monitorDeclaration_ is:   **monitor** _id_     [ **implement** _implementItem_ ]     [ **implement** **by** _implementByItem_ ]     [ **import** [ **var** ] _importItem_            {, [ **var** ] _importItem_ } ]     [ **export** [ _howExport_ ] _id_ {,[_howExport_ ] _id_ }]     _statementsAndDeclarations_   **end** _id_

## Description
A monitor is a special purpose module (see **module**) that is used with concurrent processes (see **process**). At most, one concurrent process (see **process**) can be active in a monitor at a time. This means that a process will be blocked if it calls a monitor that is already active. The process will not be allowed to proceed until the monitor is inactive. The monitor provides _mutually exclusive_ access to the monitor's internal data.


## Example
This monitor controls access to the _count_ variable so it can be updated by two processes (the _observer_ and the _reporter_) without being corrupted by this concurrent access. Generally, it is not safe to have one process update a variable that other processes are simultaneously accessing. The _observer_ process repeatedly increments the _counter_ when it observes an event. The _reporter_ process repeatedly writes out the number of events that have occurred since the last report, resetting the _counter_ to zero.

        monitor controller
            export observe, report
        
            var counter : int := 0
        
            procedure observe
                counter := counter + 1
            end observe
        
            procedure report (var n : int )
                n := counter
                counter := 0
            end report
        end controller
        process observer
            loop
                 observe one event 
                controller . observe
            end loop
        end observer
        
        process reporter
            var n : int
            loop
                controller.report ( n )
                 report n events 
            end loop
        end reporter
        
        fork observer       % Activate the observer
        fork reporter       % Activate the reporter
## Details
A **monitor** is essentially a module in which only one process can be active at a time. See **module** declarations for details about initialization. Initialization is the same for modules and monitors.

A monitor can contain **wait** statements (that put processes to sleep) and **signal** statements (that wake them up again). These statements operate on **condition** variables, which are essentially queues of sleeping processes.

A class is essentially a template for creating individual modules (objects). See **class** for details. If the class declaration is preceded by the keyword **monitor**, the created modules are actually monitors. Monitor classes can only inherit (inherit from) other monitor classes.

The body of a monitor has the same form as that of a module, except that modules, monitors and processes cannot be declared inside monitors, and certain statements (**wait** and **signal**) are allowed in monitors.


## Details
The syntax of a _monitorDeclaration_ presented above has been simplified by leaving out **pre**, **invariant** and **post** clauses. See **module** for an explanation of these extra features. There is also an optional _compilerTimeIntegerExpression_ in the first line, which is explained below. The full syntax is:

If the optional _compileTimeIntegerExpression_ is present, this is a _device monitor_. Its exclusive access is enforced by an implementation-dependent trick, such as executing it at a hardware priority level given by the expression. A device monitor is restricted from calling monitors (directly or indirectly). This restriction is imposed to eliminate the possibility of blocking a process with a non-zero hardware priority (as this would inadvertently allow multiple entry into a device monitor). It is the programmer's responsibility to meet this restriction; the compiler will not in general enforce the restriction. The current (1999) implementation ignores this _compileTimeIntegerExpression_.

        monitor id [ : compileTimeIntegerExpn ]
            [ implement implementItem ]
            [ implement by implementByItem ]
            [ import [ var ] importItem {, [ var ] importItem } ]
            [ export [ howExport ] id {, [ howExport ] id } ]
            [ pre trueFalseExpn ]
            statementsAndDeclarations
            [ invariant trueFalseExpn ]
            statementsAndDeclarations
            [ post trueFalseExpn ]
        end id
## Details
An unexported parameterless procedure in a monitor can be specified to be an _interrupt handling procedure_ by specifying a device in its header, using the form:

The _deviceSpecification_ is a compile time natural number that designates, to the implementation, the class of interrupts that effectively call this procedure. Interrupt handling procedures cannot be called explicitly within the program.

There are two restrictions that the programmer must follow when using interrupt handling procedures; these restrictions will not necessarily be enforced by the software. The first is that an interrupt handling procedure must not execute a **wait**, either directly or indirectly, by calling another procedure. The second is that the interrupt handling procedure must not directly or indirectly cause an exception, unless the exception will be caught by an exception handler that is activated directly or indirectly by the interrupt handling procedure.

        procedure id [ : deviceSpecification ]
## Details
Declarations of monitors within monitors are disallowed. This would be  redundant anyway, as only one process can be inside the outer monitor, so the inner monitor is guaranteed to be successful.

Declarations of classes within monitors are also disallowed.

Any subprogram declared within a subprogram is now allowed to be assigned to a subprogram variable, nor passed as a parametric subprogram.


## See also
**[unit](unit.html)**, **[module](module.html)** and **[class](class.html)**. See also **[export](export.html)** list, **[import](import.html)** list, **[implement](implement.html)** list, **[implement by](implement_by.html)** list and **[deferred](deferred.html)** subprogram.

