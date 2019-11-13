var action

//Read the next line of the script grid to set the action script
switch(ds_grid_get(grid, 0, scriptLine))
{
	case "newLine": action = newLine autoContinue = false break
	case "newLineAuto": action = newLine autoContinue = true break
	case "contLine": action = contLine autoContinue = false break
	case "contLineAuto": action = contLine autoContinue = true break
	case "defineChar": action = defineChar autoContinue = true break
	case "updateCharPosition": action = updateCharPosition autoContinue = true break
	case "updateCharMood": action = updateCharMood autoContinue = true break
	case "swapScript": action = swapScript autoContinue = true break
	case "addChoice": action = addChoice autoContinue = true break
	case "clearChoice": action = clearChoice autoContinue = true break
	case "relationChange": action = relationChange autoContinue = true break
	case "relationCheck": action = relationCheck autoContinue = true break
	case "cutTo": action = cutTo autoContinue = true break
	case "charVibrate": action = charVibrate autoContinue = true break	
	case "charRecolour": action = charRecolour autoContinue = true break
	case "swapBackdrop": action = swapBackdrop autoContinue = true break
	case "addFlag": action = addFlag autoContinue = true break
	case "checkFlag": action = checkFlag autoContinue = true break
}

script_execute(action,ds_grid_get(grid, 1, scriptLine), ds_grid_get(grid, 2, scriptLine), ds_grid_get(grid, 3, scriptLine),  ds_grid_get(grid, 4, scriptLine))
scriptLine += 1