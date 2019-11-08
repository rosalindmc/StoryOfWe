/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black)
draw_rectangle(x-100,y-20,x+100,y+20,false)
draw_set_color(c_white)
draw_rectangle(x-100,y-20,x+100,y+20,true)

draw_set_halign(fa_left)
draw_set_valign(fa_middle)

draw_set_font(fnt_Choice)
draw_text(x-80,y,vistext)