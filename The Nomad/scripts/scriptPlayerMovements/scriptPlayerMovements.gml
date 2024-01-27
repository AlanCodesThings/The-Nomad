// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movePlayer(){
	var moveLeft = keyboard_check(vk_left);
	var moveRight = keyboard_check(vk_right);
	var moveUp = keyboard_check(vk_up);
	var moveDown = keyboard_check(vk_down);
	var hSpeed = moveRight - moveLeft;
	var vSpeed = moveDown - moveUp;

	if (hSpeed != 0 || vSpeed != 0)
	{
		var moveSpeed = 4;
		var dir = point_direction(0, 0, hSpeed, vSpeed);
		var xAdd = lengthdir_x(moveSpeed, dir);
		var yAdd = lengthdir_y(moveSpeed, dir);
		x = x + xAdd;
		y = y + yAdd;
	}

}