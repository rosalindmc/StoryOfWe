/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black)
draw_rectangle(x-150,y-50,x+150,y+65,false)
draw_set_color(c_white)
draw_rectangle(x-150,y-50,x+150,y+65,true)
draw_rectangle(x-125,y-10,x+125,y+30,true)

draw_set_valign(fa_middle)
draw_set_halign(fa_middle)
draw_text(x,y-32,"What is your Name?")
draw_set_halign(fa_left)
draw_text(x-120,y+10,name)
draw_set_halign(fa_middle)
draw_text(x,y+48,"Press Enter to Submit")
draw_set_halign(fa_left)