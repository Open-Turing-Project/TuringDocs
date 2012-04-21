
#GUI.GetEventTime

##Syntax
**GUI.GetEventTime** : **int**



##Description
Returns the time in milliseconds when the event (mouse button or keystroke) took place. This value is the same value as *Time.Elapsed* returns if called when the event was processed. This function should only be called in an *action procedure* or in a default mouse, keystroke, or null event handler, as it will return 1 when there is no event being processed.
This event can be used as a timer for various functions such as determining whether a single click or a double click of the mouse button took place or for timing keyboard input.



##Example
The following program times the interval between two button presses.


        import GUI in "%oot/lib/GUI" 
        View.Set ("graphics:300;100") 
        
        var startTime, startButton, finishButton : int
        
        procedure Start
            startTime := GUI.GetEventTime
        end Start
        
        procedure Finish
            Text.Locate (1, 1)
            put "The time between button pressed is ", 
                GUI.GetEventTime  startTime, " msecs"
            GUI.Quit
        end Finish
        
        startButton := GUI.CreateButton (10, 10, 110, "Click First", Start)
        finishButton := GUI.CreateButton (180, 10, 110, "Click Second", Finish)
        
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.GetEventTime** , not by calling **GetEventTime** .



##See also
**[gui_processevent.html](GUI.ProcessEvent)**.


