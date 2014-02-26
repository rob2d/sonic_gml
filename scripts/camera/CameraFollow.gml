#define CameraFollow
//shift camera for look up / down
if(argument0.lookUpDown == 100 && cameraShiftY < 100)
    cameraShiftY += 1;
else if(argument0.lookUpDown == -100 && cameraShiftY > -100)
    cameraShiftY -= 1;

else if(cameraShiftY > 0 && argument0.lookUpDown != 100)
    cameraShiftY -= 1

else if(cameraShiftY < 0 && argument0.lookUpDown != -100)
    cameraShiftY += 1


//define center of camera
cameraCenterX = view_xview + (view_wview/2);
cameraCenterY = view_yview + (view_hview/2);

//define the offset of center object(argument0)
cameraOffsetX = (argument0.x + cameraShiftX) - cameraCenterX;
cameraOffsetY = (argument0.y + 4 + cameraShiftY) - cameraCenterY;

//free zone
if(cameraOffsetX > 8) 
    cameraOffsetX -= 8; 
else
    if(cameraOffsetX < -8) 
        cameraOffsetX += 8; 
else
    cameraOffsetX = 0;

if(argument0.downCol == 0)
{
  if (cameraOffsetY > 32) 
        cameraOffsetY -= 32; 
  else if (cameraOffsetY < -32) 
        cameraOffsetY += 32; 
  else
        cameraOffsetY = 0;
}

//speed limiting
if(cameraOffsetX > 16)
    cameraOffsetX = 16;
else if(cameraOffsetX < -16)
    cameraOffsetX = -16;

var cameraLimitY;

if(argument0.downColCheck == 1)
    argument0.justLanded = 1

if(argument0.justLanded) 
    cameraLimitY = 6; 
else
    cameraLimitY = 16;

if (abs(cameraOffsetY) <= 6) 
    argument0.justLanded = 0;
else if (cameraOffsetY > cameraLimitY)
    cameraOffsetY = cameraLimitY; 
else if (cameraOffsetY < -cameraLimitY) 
    cameraOffsetY = -cameraLimitY;

if(cameraDelay > 0)
{
    cameraDelay -= 1;
    cameraOffsetX = 0;
    cameraOffsetY = 0;
}
    
//update our view
view_xview+= cameraOffsetX;
view_yview+= cameraOffsetY;
view_xview = round(view_xview);

view_yview = round(view_yview);
CameraLimit();

