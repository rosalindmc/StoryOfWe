/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(icon,plus,x,y,1,1,0,c_white,alpha)

draw_set_font(fnt_Choice)
draw_set_halign(fa_left)
draw_set_alpha(alpha)

if value > 0
{
	draw_text(x+25,y,"+"+string(value))
}
else
{
	draw_text(x+25,y,value)
}
draw_set_alpha(1)