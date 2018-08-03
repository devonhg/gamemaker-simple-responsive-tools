///@description Using this script draw text that dynamically scales with the screen
///@param X The x position of the text
///@param Y The y position of the text
///@param Text The string position of the text
///@param heightPerLine The height in pixels to scale the text to, per line
///@param width The width in pixels to restrain the text to
///@param color The color of the text

var _width = camera_get_view_width(view_camera[view_current]);
var _str_height = string_height(argument[2]);
var _scale = argument[3]/_str_height;
var _sep = _str_height;

draw_text_ext_transformed_color( 
	argument[0], 
	argument[1], 
	argument[2],
	_sep,
	argument[4] / _scale,
	_scale,
	_scale,
	0,
	argument[5],
	argument[5],
	argument[5],
	argument[5],
	1
);