#define p_slope_find

    leftASensor=31 
    rightASensor=31

    leftAngley = y - dSin * -8 + dCos * leftASensor
    leftAnglex = x + dCos * -8 + dSin * leftASensor
    
    rightAngley = y - dSin * 8 + dCos * rightASensor
    rightAnglex = x + dCos * 8 + dSin * rightASensor

mask_index= spr_mask_pt
while(p_collide_o_platform(round(leftAnglex + dSin * g), round(leftAngley + dCos * g), spr_mask_pt, layer))
{
    leftASensor -=1
    leftAngley = y - dSin * -8 + dCos * leftASensor
    leftAnglex = x + dCos * -8 + dSin * leftASensor
    if(leftASensor < -20){
    leftASensor = 10
    rightASensor = 10
    break
    }
    }

while(p_collide_o_platform(round(rightAnglex + dSin * g), round(rightAngley + dCos * g), spr_mask_pt, layer))
{
    rightASensor -=1
    rightAngley = y - dSin * 8 + dCos * rightASensor
    rightAnglex = x + dCos * 8 + dSin * rightASensor
    if(rightASensor < -20){
    leftASensor = 10
    rightASensor = 10
    break
    }
    }

    
leftAngley = y - dSin * -8 + dCos * (leftASensor+1)
leftAnglex = x + dCos * -8 + dSin * (leftASensor+1)    
    
rightAngley = y - dSin * 8 + dCos * (rightASensor+1)
rightAnglex = x + dCos * 8 + dSin * (rightASensor+1)


while(!p_collide_o_platform(round(leftAnglex + dSin * g), round(leftAngley +dCos * g), spr_mask_pt, layer))
{
    leftASensor +=1
    leftAngley = y - dSin * -8 + dCos * (leftASensor)
    leftAnglex = x + dCos * -8 + dSin * (leftASensor) 
    if(leftASensor > 15)
    {
        rightASensor = 10
        leftASensor= 10
        break
        }   
    }


while(!p_collide_o_platform(round(rightAnglex + dSin * g), round(rightAngley + dCos * g), spr_mask_pt, layer))
{
    rightASensor +=1
    rightAngley = y - dSin * 8 + dCos * (rightASensor)
    rightAnglex = x + dCos * 8 + dSin * (rightASensor)
    if(rightASensor > 15) 
    {
        leftASensor = 10
        rightASensor= 10
        break
        }
    }
    
    leftAngley = y - dSin * -8 + dCos * leftASensor
    leftAnglex = x + dCos * -8 + dSin * leftASensor
    
    rightAngley = y - dSin * 8 + dCos * rightASensor
    rightAnglex = x + dCos * 8 + dSin * rightASensor
    
rightAnglex = floor(rightAnglex)
leftAnglex = floor(leftAnglex)
rightAngley = floor(rightAngley)
leftAngley = floor(leftAngley)
    
angleFound = floor(point_direction(leftAnglex, leftAngley, rightAnglex, rightAngley))
