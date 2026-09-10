/// @description Starting Vars
if (main_menu == false)
{
//disable Instances
instance_deactivate_layer("Instances")
//instance_deactivate_object(obj_parent_wall)
obj_gierka.ui = false

width = view_wport[0];
height = view_hport[0];

pause = surface_create (width,height);

surface_set_target(pause);
draw_surface(application_surface,0,0);
surface_reset_target();
}

choice = 0

arr_menu_options[0] = "Continue"
arr_menu_options[1] = "Options"
arr_menu_options[2] = "Main Menu"
arr_menu_options[3] = "Exit"

options_number =  array_length(arr_menu_options)

pixels = 32