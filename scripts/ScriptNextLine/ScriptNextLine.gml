var action, actionVar

actionVar = 0
autoCont = false

//Read the next line of the script grid to set the action script
switch(ds_grid_get(grid, 0, scriptLine))
{
	case "newLine": action = newLine break
	case "newLineAuto": action = newLine actionVar = 1 break
	case "contLine": action = contLine break
	case "contLineAuto": action = contLine actionVar = 1 break
	case "defineChar": action = defineChar autoCont = true break
	case "updateChar": action = updateChar autoCont = true break
}

script_execute(action,actionVar,ds_grid_get(grid, 1, scriptLine), ds_grid_get(grid, 2, scriptLine), ds_grid_get(grid, 3, scriptLine),  ds_grid_get(grid, 4, scriptLine))
scriptLine += 1