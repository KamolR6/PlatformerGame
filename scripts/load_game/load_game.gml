function load_game() {
    if (!file_exists(working_directory + "\SaveFile.txt")) {
        show_debug_message("Brak save!");
        return;
    }

    var file = file_text_open_read(working_directory + "\SaveFile.txt");

    global.load_room = file_text_read_real(file);
    file_text_readln(file);

    global.load_x = file_text_read_real(file);
    file_text_readln(file);

    global.load_y = file_text_read_real(file);


    file_text_close(file);

    global.loading_game = true;

    room_goto(global.load_room);
}