#define lvledit_gui_griddraw
draw_set_alpha(1)
draw_set_color(c_white)
draw_rectangle(0, 0, 1024, 768,0)

//DRAW LEVEL GRID
var i
//x
for(i = 0; i < round(896/(grid * z)); i += 1)
{
    draw_set_color(c_ltgray)
    draw_line(round(i * grid *z) + 128, 0, round(i * grid * z) + 128, 768)
    }
//y
for(i = 0; i < round(768/(grid * z)); i += 1)
{
    draw_set_color(c_ltgray)
    draw_line(128, round(i * grid * z), 1024, round(i * grid * z))
    }
    
    
//DRAW LEVEL BORDERS WHEN LEVEL IS TOO SMALL
draw_set_alpha(1)

if(lvledit_pixelx(ctrl_lvledit.lvlwidth) < 1024)
draw_rectangle(lvledit_pixelx(ctrl_lvledit.lvlwidth), 0, 1024, 768, 0)

if(lvledit_pixely(ctrl_lvledit.lvlheight) < 768)
draw_rectangle(128, lvledit_pixely(ctrl_lvledit.lvlheight), 1024, 768, 0)
