#define CameraLimit
//limit the view of the camera(quickly!)
if(camSmoothLimiting == 0)
{

    if(view_xview < camLeftBorder)
        view_xview = camLeftBorder

    else if(view_xview > camRightBorder - view_wview)
        view_xview = camRightBorder - view_wview

    if(view_yview > camDownBorder - view_hview)
        view_yview = camDownBorder - view_hview

    else if(view_yview < camUpBorder)
        view_yview = camUpBorder
}

//If the camera's limit is to be gradually changed, then execute the following events
else if(camSmoothLimiting == 1)
{
    //adjust the buffer to get closer to the limit
    if(camRightBorderB > camRightBorder)
        camRightBorderB -= 1;
    else if(camRightBorderB < camRightBorder)
        camRightBorderB += 1;
 
       if(camLeftBorderB < camLeftBorder)
        camLeftBorderB += 1;    
    if(camLeftBorderB > camLeftBorder)
        camLeftBorderB -= 1;
  
      if(camUpBorderB < camUpBorder)
        camUpBorderB += 1;
    else if(camUpBorderB > camUpBorder)
        camUpBorderB -= 1;
  
      if(camDownBorderB > camDownBorder)
        camDownBorderB -= 1;
      else if(camDownBorderB < camDownBorder)
        camDownBorderB += 1;
        
    //limit to the buffer values
    if(view_xview < camLeftBorderB)
        view_xview = camLeftBorderB;

    if(view_xview > camRightBorderB - view_wview)
        view_xview = camRightBorderB - view_wview;

    if(view_yview > camDownBorderB - view_hview)
        view_yview = camDownBorderB - view_hview;

    if(view_yview < camUpBorderB)
        view_yview = camUpBorderB;
}

