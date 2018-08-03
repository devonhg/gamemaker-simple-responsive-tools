///@description Create an alert message, companion to obj_ru_alert
///@param Message The message to show in the alert
///@param *Title Optionally, modify the title

show_debug_message( "===scr_ru_alert: Initating Message: " + argument[0] );

var title = "";

if( argument_count > 1 ){
	title = argument[1];
}

if( !instance_exists( obj_ru_alert ) ){
	var messagebox = instance_create_depth(0,0,0, obj_ru_alert);
	
	if( title != "" ) messagebox.alert_title = argument[1];
	messagebox.alert_description = argument[0];
}else{
	show_debug_message( "===scr_ru_alert: Message already running!" );	
}