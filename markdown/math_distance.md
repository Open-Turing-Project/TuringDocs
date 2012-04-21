
#Math.Distance

##Syntax
**Math.Distance** (*x1*, *y1*, *x2*, *y2* : **real**) : **real**

##Description
**Math.Distance **is used to calculate the distance between two points.(*x1*, *y1*) is the location of the first point, and (*x2*, *y2*) is the location of the second point.

##Details
The parameters to **Math.Distance** are real, but you can pass integer variables and constants.

##Example
This progam draws two circles with radius 75 on the screen and outputs whether they touch.
        var x1, y1, x2, y2 : int
        const RADIUS : int := 75
        x1 := Rand.Int (RADIUS, maxx - RADIUS)
        y1 := Rand.Int (RADIUS, maxy - RADIUS)
        x2 := Rand.Int (RADIUS, maxx - RADIUS)
        y2 := Rand.Int (RADIUS, maxy - RADIUS)
        Draw.FillOval (x1, y1, RADIUS, RADIUS, brightred)
        Draw.FillOval (x2, y2, RADIUS, RADIUS, brightgreen)
        if Math.Distance (x1, y1, x2, y2) < RADIUS * 2 then
            put "The two circles touch"
        else
            put "The two circles do not touch"
        end if
##Status
Exported qualified.
This means that you can only call the function by calling **Math.Distance**, not by calling **Distance**.
