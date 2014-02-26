#define p_load_character

if(character == 1)
rsc_sonicanims() //load animations
if(character == 2)
rsc_tailsanims()

//---------------------------------------------------------
//DRAW THE ACTUAL CHARACTER
//---------------------------------------------------------
//set sprite to Sonic or Tails
switch(character)
{
    case char_sonic: spriteDrawn[0] = spr_sonic; break;
    case char_tails: spriteDrawn[0] = spr_tails; break;
    default: break;
    }

