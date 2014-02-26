#define p_stage_boss
//Test for collision with Robotnik's swinging ball
if(obj_robotnik1.chainLength > 0)
{
    if( collision_circle(obj_robotnik1.chainBallX, obj_robotnik1.chainBallY, 24, id, 0, 0) && action <> action_hurt )
    {
        if(!invincibility)//!attack && !invincibility
        {
            p_attacked()
        }
    }
}

//test for collision with Robotnik and damage him when possible
 if( maskCollide(attackMask, x, y, obj_robotnik1) && obj_robotnik1.damageTimer == 0 && attack == 1 )
 {
        obj_robotnik1.damageTimer = 25; //set robotnik's damage timer for invincibility
        v *= -0.25;
        g *= -0.25;
 }
 
 else if( !attack && !invincibility && maskCollide(defendMask, x, y, obj_robotnik1) && obj_robotnik1.damageTimer == 0 )
 {

            p_attacked()
 }

