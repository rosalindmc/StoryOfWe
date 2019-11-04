/// @description Insert description here
// You can write your code in this editor

/*Temporary
for(i = 0; i < global.writer.TextCount; i++)
{
	if (global.writer.TextToWrite[i].TextCurrentDisplay = global.writer.TextToWrite[i].TextToDisplay)
	{
		draw_set_color(c_yellow)
	}	
	else
	{
		draw_set_color(c_white)
	}
		
	draw_text(x,y+(i*15),global.writer.TextToWrite[i].TextCurrentDisplay)
	draw_text(x+200,y+(i*15),global.writer.TextToWrite[i].TextToDisplay)
}

/*Script
for(i = 0; i < ds_grid_width(grid); i++)
{
	for(ii = 0; ii < ds_grid_height(grid); ii++)
	{
		draw_text(x+(i*150),y+(ii*15),string(ds_grid_get(grid,i,ii)))
	}
}

draw_text(x-20,y-20,string(ds_grid_width(grid))+" / "+string(ds_grid_height(grid)))