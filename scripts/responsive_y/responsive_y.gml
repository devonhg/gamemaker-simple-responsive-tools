///@description Get the y value at the height fraction, 12 base. 
///@param fraction 1-12 as to what fraction to use. 

var scrn_h = camera_get_view_height(view_camera[view_current]);//Screen height
var scrn_y = camera_get_view_y(view_camera[view_current]);
var scrn_fract = scrn_h / 12; 

return scrn_y + (scrn_fract * argument[0]); 