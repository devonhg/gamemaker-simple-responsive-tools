///@description Get the x value at the width fraction, 12 base. 
///@param fraction 1-12 as to what fraction to use. 

var scrn_w = camera_get_view_width(view_camera[view_current ]);//Screen width
var scrn_x = camera_get_view_x(view_camera[view_current]);
var scrn_fract = scrn_w / 12; 

return scrn_x + (scrn_fract * argument[0]); 