function save_game() {
    var file = file_text_open_write(working_directory + "\SaveFile.txt");

    file_text_write_real(file, global.save_room);
    file_text_writeln(file);

    file_text_write_real(file, global.save_x);
    file_text_writeln(file);

    file_text_write_real(file, global.save_y);


    file_text_close(file);
}