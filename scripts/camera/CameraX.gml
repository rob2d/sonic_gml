#define CameraX
//obtains center point for any given value
//argument0 = camera's x center

if( argument0 - 160 > 0 && argument0 - 160 < (room_width-320))
        temp = round(argument0)

if( argument0 - 160 <= 0)
        temp = 160

if( argument0 >= (room_width-160))
        temp = (room_width-160)

if(temp < camLeftBorder + 160)
    return camLeftBorder + 160
    
if(temp > camRightBorder - 160)
    return camRightBorder - 160

if(temp > camDownBorder - 120)
    return camDownBorder - 120
    

if(temp < camRightBorder - 160 && temp > camLeftBorder + 160)       
        return temp
        

