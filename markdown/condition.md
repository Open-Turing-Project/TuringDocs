
#condition

##Syntax
A conditionDeclaration is:
 **var** *id *{ , *id *} : [ **array** *indexType* {, *indexType* } **of** ]  [ *conditionOption* ] **condition**

##Description
A condition is essentially a queue of sleeping processes. It is used in a concurrent program to allow processes to block themselves (by the **wait** statement) and later to be awakened (by the **signal** statement). A condition variable, which can occur only inside a monitor (a special kind of module that handles concurrency) or monitor class, is used by the **wait** and **signal** statements for putting processes to sleep and later waking them up.

##Example
The processes use this monitor to gain exclusive access to a resource. A process wanting to use the resource calls the *request* entry point and is blocked until the resource is free. When the process is finished with the resource, it calls the *release* entry point. This monitor is essentially a binary *semaphore* in which the semaphore's *P* operation is the *request* and the *V* is the *release*.
        monitor resource
            export request, release
        
            var available : boolean := true
            var nowAvailable : condition
        
            procedure request
                if not available then
                    wait nowAvailable   % Go to sleep
                end if
                assert available
                available := false      % Allocate resource
            end request
        
            procedure release
                assert not available    % Resource is allocated
                available := true       % Free the resource
                signal nowAvailable % Wake up one process
                                % If any are sleeping
            end release
        
        end resource
        process worker
            loop
                
                resource.request        % Block until available
                 use resource 
                resource.release
            end loop
        end worker
        
        fork worker             % Activate one worker
        fork worker             % Activate another worker
##Details
A *conditionOption *is one of:
 (a) **priority** (b) **deferred** (c) **timeout**
The **priority** option requires that the corresponding **wait** statements include priorities. Options (b) and (c) declare *deferred* conditions. A signal to a deferred condition causes the signaled process to become ready to enter the monitor when the monitor becomes inactive. The signaling process continues running in the monitor. A signal to an *immediate* (non deferred) condition causes the signaled process to begin running in the monitor immediately. The signaling process waits to re-enter the monitor when the monitor becomes inactive. All conditions in a device monitor must be deferred (or **timeout**).
A **timeout** option means the signaling is deferred and that an extra parameter to the **wait** statement must give a *timeout* *interval*. If a process waits longer than its interval, it is automatically signaled. Beware that the *empty* function can be non-repeatable when applied to timeout conditions. For example, **empty**(*c*)* *may not be equal to **empty**(*c*) in a single expression. In the current (1999) version of Turing, the time for time outs is measured in simulation time rather than real time. See the **pause** statement.
Conditions cannot be named as types, cannot be contained in records, unions or collections and cannot be declared in statements (such as **begin** or **loop**) or in subprograms. They can only be declared in monitors and monitor classes.
There is no guaranteed order of progress among awakened deferred processes, processes signaling immediate conditions, and processes attempting to enter an active monitor.
Note that *conditionOption* must precede the keyword **condition**.

##See also
**[wait.html](wait)** and **[signal.html](signal)**. See also **[monitor.html](monitor)** and **[fork.html](fork)**. See also **[empty.html](empty)**. See also **[pause.html](pause)**.
