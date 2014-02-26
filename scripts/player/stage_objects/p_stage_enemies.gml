#define p_stage_enemies
if(attackMask != 0)
{
    tempEnemyCollided =  collision_circle(x, y, sprite_get_width(attackMask)/2, obj_enemy, 1, 0) 
    if( tempEnemyCollided && action <> action_hurt )
    {   
            sound_play(snd_enemyexplode)
            if(g > 0) {g *= -1; jumpInitiated = 1}
            with(tempEnemyCollided)
            {
                instance_create(x, y, fx_explosionenemy)
                instance_destroy()
            }
    }
}
    
else if(attackMask == 0)
{
    tempEnemyCollided = collision_circle(x, y, sprite_get_width(defendMask)/2, obj_enemy, 1, 0) 
    if( tempEnemyCollided && action <> action_hurt )
    {
        if(!attack && !invincibility)
        {
            with(tempEnemyCollided)// --just a debug enemy action
                xMove = xMove * -1 // --------
            p_attacked()
            }
        else if(attack)
        {
            sound_play(snd_enemyexplode)
            if(g > 0) {g *= -1; jumpInitiated = 1}
            with(tempEnemyCollided)
            {
                instance_create(x, y, fx_explosionenemy);
                instance_destroy();
            }
        }
    }
}

