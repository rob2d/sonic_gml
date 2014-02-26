//draw scroll 
draw_set_color(c_purple)
draw_rectangle(x + 16, y, x + width - 16, y + height, 0)

//left arrow box
draw_set_color(c_gray)
draw_rectangle(x, y, x + 16, y + height, 0)
draw_set_color(c_ltgray)
draw_line(x, y, x + 16, y)
draw_line(x, y, x, y + height)
draw_set_color(c_dkgray)
draw_line(x, y + height, x + 16, y + height)
draw_line(x +  16, y, x + 16, y + height)
draw_set_color(c_purple)
draw_triangle(x + 2, y + 8, x + 14, y + 2, x + 14, y + 14, 0)


//right arrow box
draw_set_color(c_gray)
draw_rectangle(x + width - 16, y, x + width, y + height, 0)
draw_set_color(c_ltgray)
draw_line(x + width - 16, y, x + width, y)
draw_line(x, y, x, y + height)
draw_set_color(c_dkgray)
draw_line(x + width - 16, y + height, x + width, y + height)
draw_line(x +  width, y, x + width, y + height)
draw_set_color(c_purple)
draw_triangle(x + width - 2, y + 8, x + width - 14, y + 2, x + width - 14, y + 14, 0)

select_left = x + 16 + (((width - 32) / range) * position)
select_right = x + 16 + (((width - 32) / range) * position) + field

draw_set_color(c_black)
draw_line( select_left, y, select_left, y + height)
draw_line( select_right, y, select_right, y + height)

selected = 0
if(mouse_x < select_right && mouse_x > select_left && mouse_y < y + 16 && mouse_y > y)
    selected = 1
    
if(selected)
{
    draw_rectangle( x, y, x + 5, y + 5, 0)
    }
