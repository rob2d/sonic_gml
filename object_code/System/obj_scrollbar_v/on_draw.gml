//draw scroll field
draw_set_color(c_purple)
draw_rectangle(x, y + 16, x + width, y + height - 16, 0)

//top arrow box
draw_set_color(c_gray)
draw_rectangle(x, y, x + 16, y + 16, 0)
draw_set_color(c_ltgray)
draw_line(x, y, x + 16, y)
draw_line(x, y, x, y + 16)
draw_set_color(c_dkgray)
draw_line(x, y + 16, x + 16, y + 16)
draw_line(x +  16, y, x + 16, y + 16)
draw_set_color(c_purple)
draw_triangle(x + 2, y + 14, x + 14, y + 14, x + 8, y + 2, 0)

//bottom arrow box
draw_set_color(c_gray)
draw_rectangle(x, y + height - 16, x + 16, y + height, 0)
draw_set_color(c_ltgray)
draw_line(x, y + height - 16, x + 16, y + height)
draw_line(x, y + height - 16, x, y + height)
draw_set_color(c_dkgray)
draw_line(x, y + height, x + 16, y + height)
draw_line(x +  16, y + height - 16, x + 16, y + height)
draw_set_color(c_purple)
draw_triangle(x + 2, y + height - 14, x + 14, y + height - 14, x + 8, y + height - 2, 0)
