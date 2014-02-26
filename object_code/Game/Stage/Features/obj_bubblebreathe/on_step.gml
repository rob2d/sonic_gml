/*IF SECOND BUBBLE*/
/*If the bubble was created as a "second Bubble", then create the
first bubble to rise from the player and delay the bubble)*/
if(secondBubble)
{
    newBubble = instance_create(x, y, obj_bubblebreathe)
    newBubble.breatheDir = breatheDir
    newBubble.secondBubble = 0
    wait = 10
    secondBubble = 0
}

//move unless the bubble is in wait mode
if(wait == 0)
{
    y -= 1
    visible = 1
}
else
{
    visible = 0
    wait -= 1
}

if(image_index < 2)
{
    x += breatheDir / 10

}

else
    image_speed = 0

if(y - 3 < obj_water.y)
    instance_destroy()
