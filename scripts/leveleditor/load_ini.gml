#define load_ini


//delete all objects on screen
with(obj_lvledit_object)
    instance_destroy()

//load INI file for editing    
ini_open('testlevel.ini')

//create new objects from saved INI file
for(i = 0; i < ini_read_real('level', 'objectcount', 0); i += 1)
{
    createObject = instance_create( ini_read_real('level', 'object' + string(i) + 'x', 0) ,
                     ini_read_real('level', 'object' + string(i) + 'y', 0) ,
                     obj_lvledit_object)
                     
    createObject.object = ini_read_real('level', 'object' + string(i) + 'type', 0)
    createObject.sprite_index = ini_read_real('level', 'object' + string(i) + 'sprite', 0)
    createObject.xPos = ini_read_real('level', 'object' + string(i) + 'x', 0)
    createObject.yPos = ini_read_real('level', 'object' + string(i) + 'y', 0)
    }
    
//unload INI file
ini_close()
