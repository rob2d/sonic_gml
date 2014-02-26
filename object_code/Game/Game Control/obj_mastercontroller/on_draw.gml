
/*if(global.bossMode)
{   
    draw_set_color(make_color_rgb(100, 0, 0))
    for(i = 0; i < 240; i+= 1)
    {
    draw_set_alpha(0.1 + (abs(i - 120)/140))
    draw_line(view_xview, view_yview + i, view_xview + 320, view_yview + i)
    }
    draw_set_alpha(1)
    draw_set_color(c_white)
}*/

draw_set_font(defaultfont)
draw_set_color(c_white)
draw_set_halign(fa_left)

depth = 0
if(global.gameRings >9)
draw_text(view_xview + 10, view_yview + 10, 'RINGS: ' + string(global.gameRings) + '#TIME: ' + minutesDisplay + ':' + secondsDisplay)

else if(global.gameRings <= 9)
draw_text(view_xview + 10, view_yview + 10, 'RINGS: 0' + string(global.gameRings) + '#TIME: ' + minutesDisplay + ':' + secondsDisplay)

timeCount += 1

if(timeCount >= 60)
{
    seconds += 1
    timeCount = 0
    }

if( seconds >= 60)
{
    minutes += 1
    seconds = 0
    }
    
if (minutes < 10)
minutesDisplay = '0' + string(minutes)

if (minutes >= 10)
minutesDisplay = string(minutes)

if (seconds < 10)
secondsDisplay = '0' + string(seconds)

if (seconds >= 10)
secondsDisplay = string(seconds)

draw_sprite(spr_hud_char, global.player1.character - 1, view_xview + 10, view_yview + 214)
draw_text(view_xview + 74, view_yview + 214, string(global.gameLife))
