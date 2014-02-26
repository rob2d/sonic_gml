#define TECHNICAL INFO
/*TUTORIAL

POSITIONING/360 THEORY
(OK, SO ITS BASICALLY A SMALL MATH LESSON)

So, I'm not really one to say I'm excellent at math, but when designing a 2D game where the player can
move in 360 degrees, there are basically 2 essential functions you must understand. They are probably
familiar if you've taken a calculus or even a trig class but what I am refering to is SINE(in GML:
"Sin") & COSINE("Cos") functions. 

The basis of the entire movement is on multiplying the Sin/Cos functions by the Angle(0-360 degrees) 
you are currently moving in. 

From 0° to 90°, Cos will shift gradually from 1 to 0. Sin will do the opposite, going from 0 to 1. It's convenient to know this,
as from 0° to 90°, you are rotating a movement about it's axis. If you think things on 1 axis, From 0° to 90°, a 
normal horizontal movement would begin to rotate along a vertical movement pattern straight upward. If we take
Cos of 0°(normal X axis), we have 1. But At 90°(Where the X axis isn't moving), we return 0 using Cos. But while Cos is returning
0 at 90°, Sin is returning 1. 

Basically, Sine will be used as the function for the basis of rotating a movement on the Y Axis. Cosine, on the
X(Or the Normal) Axis/Plane. The patterns for Sine & Cosine continue in 360 degrees, so for the right angles the functions will return
1 to 0 to -1 to 0 back to 1 gradually(starting at 0° for Cosine, and 90° for Sine). As Sine and Cosine will always add up to 1 for a
given angle, we can look at this as 1.00 or, 100% of the given movement when added together. As you rotate, the regular X and Y movement values
are multiplied by Cos, and also by Sin(it won't double the movement since Sin is complementary of Cos). I guess that's the best I can explain it.



                           
ANGLE/DIRECTION
                                                      
*if you wish to change the player's angle in the code, use "p_angle(InsertAngleHere)" rather than 
simply changing the angle variable. This is because instead of calling COS & SIN functions everytime
it is required, it is simply returned from a list of angles. This saves a lot of processing time!

*refering to the comment above, the variables dSin and dCos are used when you want to refer to the current
player's angle's sin/cos functions(for vectors, or calculating direction).

*also if you wish to use Sin/Cos, it would be a good idea to run the calculation from global.CosGet or
global.SinGet variables. These are defined in the m_sincos_set() function and it is called by the
camera object(which currently is used to set up all of the major in game features).


KNOWN GLITCHES

-Accelerating while walking backwards
-The Objects do not crush you correctly based on rotating Angles, too lazy to program

