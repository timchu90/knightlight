var sound;
sound[0] = Flail_Hit;
sound[1] = Flail_Hit2;
sound[2] = Flail_Hit3;

if (!audio_is_playing(Flail_Hit) && !audio_is_playing(Flail_Hit2) && !audio_is_playing(Flail_Hit3)) {
audio_play_sound(sound[irandom(2)],10,false);
}
