clc;
[audio,fs] =audioread("audio.wav");
[audio_noise,fs1]=audioread("audio_noise.wav");
subplot(5,1,1);
plot(audio);
subplot(5,1,2);
s=audio(2000:2320);
plot(abs(fft(s)));
n=audio_noise(2000:2320);
subplot(5,1,4);
plot(abs(fft(n)));
subplot(5,1,3);
plot(audio_noise);
