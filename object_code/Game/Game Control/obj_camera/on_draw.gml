//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//DISPLAY TITLE TEXT
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
draw_set_font(defaultfont)
if(textfadetitle >= 300)
    textfadetitle -= 1

if(textfadetitle > 0 && textfadetitle < 300)
    textfadetitle -= 3.5
    
if(textfadetitle > 300)
draw_text_ext_transformed_color( view_xview - 48 +(300/300) * 60, view_yview + 210, "Sonic Physics GML engine by cryptic_sailor", -1, -1, 300/300, 300/300, (300-300), c_yellow, c_white, c_yellow, c_white, textfadetitle/300 )

if(textfadetitle <= 300 && textfadetitle <> 0)
draw_text_ext_transformed_color( view_xview - 48 +(300/textfadetitle) * 60, view_yview + 210, "Sonic Physics GML engine by cryptic_sailor", -1, -1, textfadetitle/300, textfadetitle/300, (300-textfadetitle), c_yellow, c_white, c_yellow, c_white, textfadetitle/ 300)

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if(keyboard_check_pressed(vk_f2))
    game_restart()
