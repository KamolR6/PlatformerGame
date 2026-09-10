var width = display_get_gui_width();

var czas = (get_timer() - timer_start) / 1000000;

var mins = floor(czas / 60);
var sec = floor(czas mod 60);
var milisec = floor((czas - floor(czas)) * 100);

var mins_txt = string(mins);
var sec_txt = string(sec);
var milisec_txt = string(milisec);

if (!string_starts_with(mins_txt, "0") && string_length(mins_txt) < 2) {
    mins_txt = "0" + mins_txt;
}

if (!string_starts_with(sec_txt, "0") && string_length(sec_txt) < 2) {
    sec_txt = "0" + sec_txt;
}

if (!string_starts_with(milisec_txt, "0") && string_length(milisec_txt) < 2) {
    milisec_txt = "0" + milisec_txt;
}

var tekst = mins_txt + ":" + sec_txt + ":" + milisec_txt;

draw_set_halign(fa_right);
draw_text(width - 20, 20, tekst);
draw_set_halign(fa_left);