instance_create(x, y, obj_monitor_broken)
instance_create(x+16, y+12, fx_explosionenemy)

var tempScreen;
tempScreen = instance_create(x+16, y+8, obj_monitor_get)
tempScreen.itemType = itemType

sound_play(snd_enemyexplode)

