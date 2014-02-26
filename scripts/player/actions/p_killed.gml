#define p_killed
//p_killed(int method_of_death)

action = action_die
v = 0

if(argument0 == death_normal)
{
    animNumber = anim_die
    g = -8
    sound_play(snd_die)
    }
else if(argument0 == death_drowned)
{
    animNumber = anim_drown
    g = 0
    sound_play(snd_drown)
    }

global.gameRings = 0
shield = 0

if(player == 0)
global.gameLife -= 1

