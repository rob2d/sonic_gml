#define CameraY
//obtains center point for any given value
//argument0 = camera's y center
    
    if( argument0 - 120 > 0 && argument0 - 120 < (room_height-240))
        temp = round(argument0)

    if( argument0 - 120 <= 0)
        temp = 120

    if( argument0 - 120 >= room_height - 240)
        temp = room_height-120
        
if(temp < camDownBorder - 120 && temp > camUpBorder + 120)       
        return temp
        
if(temp < camUpBorder + 120)
    return camUpBorder + 120
    
if(temp > camDownBorder - 120)
    return camDownBorder - 120

