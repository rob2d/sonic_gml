#define draw_titlecard
draw_set_color(c_black)
draw_rectangle(0, 0, 320, 240, 0)

draw_set_color(make_color_rgb(60, 60, 200))
draw_set_font(font_titlecard1)    
draw_text(10, 10, "SONIC: CORRUPTED CHAOS")

draw_set_font(font_titlecard2)

draw_set_color(c_red)
draw_text(30, 92, "ENGINE TEST ZONE")

draw_set_color(c_white)
draw_text(30, 90, "ENGINE TEST ZONE")



