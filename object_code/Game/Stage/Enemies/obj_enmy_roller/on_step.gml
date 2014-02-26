x += xMove
y += yMove

pathTime += 1

if(pathTime <= 200)
    xMove = + 0.5

if(pathTime > 200)
    xMove = - 0.5
    
if(pathTime == 400)
    pathTime = 0
