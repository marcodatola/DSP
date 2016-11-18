dec = 25;
sndfile = 'speech_female.wav';
[x,Fs] = audioread(sndfile);
sound(x(1:dec:end),Fs/dec);