audio_group_set_gain(
    audiogroup_music,
    master_volume * music_volume
);

audio_group_set_gain(
    audiogroup_sfx,
    master_volume * sfx_volume
);

audio_group_set_gain(
    audiogroup_ui,
    master_volume * ui_volume
);


if (music_instance == -1) {
    if (audio_group_is_loaded(audiogroup_music)) {
        music_play(snd_music);
    }
}