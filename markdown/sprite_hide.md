
# Sprite.Hide

## Syntax
**Sprite.Hide** (_spriteID_ : **int**)

## Description
Hides a previously visible sprite. **Sprite.Hide** has no effect if the sprite is already invisible.


## Example
The following program animates four balls on the screen. When the balls are close to each other or to a wall, they appear, otherwise they are hidden.

        var pic, sprite, x, y, dx, dy, radius : array 1 .. 6 of int
        var visible : array 1 .. 6 of boolean
        
        setscreen ("nocursor")
        
        % Create all the sprites.
        for i : 1 .. 6
            radius (i) := Rand.Int (10, 25)
            Draw.FillOval (25, 25, radius (i), radius (i), 8 + i)
            Font.Draw (intstr (i), 20, 20, 0, black)
            pic (i) := Pic.New (0, 0, 50, 50)
            Draw.FillBox (0, 0, 50, 50, 0)
            x (i) := Rand.Int (radius (i), maxx  radius (i))
            y (i) := Rand.Int (radius (i), maxy  radius (i))
            dx (i) := Rand.Int (3, 3)
            dy (i) := Rand.Int (3, 3)
            sprite (i) := Sprite.New (pic (i))
            Sprite.SetPosition (sprite (i), x (i), y (i), true)
            Sprite.SetHeight (sprite (i), i)
            visible (i) := false
        end for
        
        % Now move all the sprites around the screen.
        loop
            for i : 1 .. 6
                if x (i) + dx (i) < radius (i) or
                        x (i) + dx (i) > maxx  radius (i) then
                    dx (i) := dx (i)
                end if
                x (i) := x (i) + dx (i)
                if y (i) + dy (i) < radius (i) or
                        y (i) + dx (i) > maxy  radius (i) then
                    dy (i) := dy (i)
                end if
                y (i) := y (i) + dy (i)
            end for
            for i : 1 .. 6
                var near : boolean := false
                if (x (i) < 50) or (x (i) > maxx  50) or
                        (y (i) < 50) or (y (i) > maxy  50) then
                    near := true
                end if
                if not near then
                    for j : 1 .. 6
                        if i not= j then
                            if sqrt ( (x (i)  x (j)) ** 2 +
                                (y (i)  y (j)) ** 2) < 100 then
                                near := true
                                exit
                            end if
                        end if
                    end for
                end if
                if near and not visible (i) then
                    Sprite.Show (sprite (i))
                    visible (i) := true
                elsif not near and visible (i) then
                    Sprite.Hide (sprite (i))
                    visible (i) := false
                end if
                Sprite.SetPosition (sprite (i), x (i), y (i), true)
            end for
            Time.Delay (40)
            exit when hasch
        end loop
        for i : 1 .. 6
            Sprite.Free (sprite (i))
        end for
## Status
Exported qualified.

This means that you can only call the function by calling **Sprite.Hide**, not by calling **Hide**.


## See also
**[Sprite.Show](sprite_show.html)**.

