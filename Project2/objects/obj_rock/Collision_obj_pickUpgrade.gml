timesHit += 2
sprite_index = damaged
instance_destroy(other)
audio_play_sound(snd_pickHit, 1, false)