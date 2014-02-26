#define p_stage_itembox
if(attack)
{

if( g > 0 && collision_circle(round(x+ (10+g)*dSin), round(y+ (10+g)*dCos), 4, obj_monitor, 1, 0))
{
        tempCollided = collision_circle(round(x+ (10+g)*dSin), round(y+ (10+g)*dCos), 4, obj_monitor, 1, 0)
        sound_play(snd_enemyexplode)
        if( shield == 3 && jumpInitiated == 2)
        { 
        g = 7 
          jumpInitiated = 1 
          }
          
        if(g > 0 && shield <> 3) 
        {
            g *= -1; 
            jumpInitiated = 1
            }
        
        with(tempCollided)
        {
                instance_destroy()
        }
    }
    
if( v >= 0 && collision_circle(round(x+ (10+v)*dCos), round(y+ (10+v)*dSin), 4, obj_monitor, 1, 0))
{
        tempCollided = collision_circle(round(x+ (10+v)*dCos), round(y+ (10+v)*dSin), 4, obj_monitor, 1, 0) 
        sound_play(snd_enemyexplode)
        with(tempCollided)
        {
                instance_destroy()
        }
    }
    
if( v <= 0 && collision_circle(round(x - (10-v)*dCos), round(y- (10-v)*dSin), 4, obj_monitor, 1, 0))
{
        tempCollided = collision_circle(round(x- (10-v)*dCos), round(y- (10-v)*dSin), 4, obj_monitor, 1, 0) 
        sound_play(snd_enemyexplode)
        with(tempCollided)
        {
                instance_destroy()
        }
}

}

