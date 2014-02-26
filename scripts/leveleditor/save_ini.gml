#define save_ini
ini_open('testlevel.ini')
ini_write_real('level','objectcount', instance_number(obj_lvledit_object))

for(i = 0; i < instance_number(obj_lvledit_object); i += 1)
{
    //object
    ini_write_real('level','object' + string(i) + 'type', instance_find(obj_lvledit_object, i).object)
    //sprite
    ini_write_real('level','object' + string(i) + 'sprite', instance_find(obj_lvledit_object, i).sprite_index)
    //coordinates  
    ini_write_real('level','object' + string(i) + 'x', instance_find(obj_lvledit_object, i).xPos) 
    ini_write_real('level','object' + string(i) + 'y', instance_find(obj_lvledit_object, i).yPos) 
    

    }
ini_close()
