/*    if( global.player1.spindashCamera >= 12 ) {
        x = global.player1.spindashCameraX
        y = global.player1.spindashCameraY
        }
    if( global.player1.spindashCamera == 0 ) {
        x = global.player1.x
        y = global.player1.y
        }
        
    if(global.player1.spindashCamera < 12 && global.player1.spindashCamera > 0){
    x = global.player1.spindashCameraX - (global.player1.spindashCameraX - global.player1.x)/12 * (13-global.player1.spindashCamera) 
    y = global.player1.spindashCameraY - (global.player1.spindashCameraY - global.player1.y)/12 * (13-global.player1.spindashCamera)
        }
        
    if(global.player1.spindashCamera > 0)
    global.player1.spindashCamera -= 1

    view_xview = cam_x(x) - 160
    view_yview = cam_y(y) - 120
*/


//DEBUG
if(keyboard_check_released(ord('M')))
{
    if(musicplay = 1)
    {
        musicplay = 0; 
        sound_stop(bgm_test_music)
            }
    else 
    if(musicplay = 0)
        {
            musicplay = 1; 
            sound_loop(bgm_test_music)
            }
    }
