
#Math.DistancePointLine

##Syntax
**Math.DistancePointLine** (_xp_, _yp_, _x1_, _y1_, _x2_, _y2_ : **real**) : **real**


##Description
**Math.DistancePointLine** is used to calculate the distance between a point and a line segment.It is often used in games to determine if a collision has occurred. (_xp_, _yp_) is the locationbetween the point. (_x1_, _y1_) and (_x2_, _y2_) are the end points of the line segment.


##Details
The parameters to **Math.DistancePointLine** are real, but you can pass integer variables and constants. The parametersare in the same order as the subprogram name (that is point, then line).


##Example
This progam draws a line segment and a circle with radius 75 on the screen and outputs whether they touch.

        var xp, yp, x1, y1, x2, y2 : int
        const RADIUS : int := 75
        xp := Rand.Int (RADIUS, maxx - RADIUS)
        yp := Rand.Int (RADIUS, maxy - RADIUS)
        x1 := Rand.Int (0, maxx)
        y1 := Rand.Int (0, maxy)
        x2 := Rand.Int (0, maxx)
        y2 := Rand.Int (0, maxy)
        Draw.FillOval (xp, yp, RADIUS, RADIUS, brightred)
        Draw.Line (x1, y1, x2, y2, brightgreen)
        if Math.DistancePointLine (xp, yp, x1, y1, x2, y2) < RADIUSthen
            put "The circle touches the line"
        else
            put "The circle does not touch the line"
        end if
##Status
Exported qualified.

This means that you can only call the function by calling **Math.DistancePointLine**, not by calling **DistancePointLine**.

