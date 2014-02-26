CameraFollow(global.player1)


//BACKGROUND SCROLLING

backgroundscrollx +=0.25
if(backgroundscrollx > 127)
    backgroundscrollx = 0
    
backgroundscrolly +=0.25
if(backgroundscrolly > 127)
backgroundscrolly = 0

background_x[1] = view_xview[0]-round(view_xview[0] * 0.075) - round(backgroundscrollx)
background_y[1] = view_yview[0]-round(view_yview[0] * 0.04)- round(backgroundscrolly)

background_x[2] = view_xview[0]-round(view_xview[0] * 0.15) - round(backgroundscrollx)
background_y[2] = view_yview[0]-round(view_yview[0] * 0.08) - round(backgroundscrolly) 

