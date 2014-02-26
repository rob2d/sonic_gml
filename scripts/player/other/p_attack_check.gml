#define p_attack_check
switch(action)
{
    case action_walk:
        if(animNumber == anim_jump) attack = 1;
        else if(animNumber <> anim_jump) attack = 0; break;
    case action_crouch: attack = 0; break;
    case action_lookup: attack = 0; break;
    case action_roll: attack = 1; break;
    case action_spin: attack = 1; break;
    case action_fireshield: attack = 1; break;
    case action_waterbounce: attack = 1; break;
    case action_skid: attack = 0; break;
    case action_fly: attack = 0; break;
    case action_hurt: attack = 0; break;
    case action_die: attack = 0; break;
    default: attack = 0; break;
}

defendMask = spr_playermask;

if(attack)
{
    if(instaShield)
        attackMask = spr_instashieldmask;
    else
        attackMask = spr_playermask;
}

else
    attackMask = 0

