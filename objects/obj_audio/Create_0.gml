music_instance = -1;

audio_play = function(_sound, _priority = 10, _loop = false) {
    return audio_play_sound(_sound, _priority, _loop);
};

music_play = function(_sound) {
    if (music_instance != -1) {
        if (audio_is_playing(music_instance)) {
            audio_stop_sound(music_instance);
        }
    }

    music_instance = audio_play_sound(_sound, 0, true);
};

audio_group_load(audiogroup_music);
audio_group_load(audiogroup_sfx);
audio_group_load(audiogroup_ui);