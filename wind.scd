s.options.sampleRate = 44100;
s.options.numBuffers = 1024*8;
s.options.numRGens=64*1;
s.options.numWireBufs=64*1;
s.options.numInputBusChannels=0;
s.options.outputStreamsEnabled.postln
s.options.device_("USB Sound Device");
s.record(numChannels:4) ;

({Out.ar(2,SoundIn.ar(0))}.play;
s.record(bus:2,numChannels:1))

s.options.numWireBufs = 1024*16;

s.options.numOutputBusChannels=2;
TempoClock.default.tempo_(120/30);
s.options.memSize = 8192*16;

e.play
e.numFrames;
e.numChannels;
e.duration;
numSamples = numFrames * numChannels
e.numFrames * e.numChannels
e.sampleRate
s.sampleRate
e.query

e = Buffer.read(s,"/Users/petrostatsiopoulos/Music/SuperCollider Recordings/SC_230228_174546.wav");

(
(SynthDef.new(\wind0, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=1;a=1;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind1, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=2;a=1;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind2, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=3;a=1;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind3, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=4;a=1;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);

(SynthDef.new(\wind4, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=1;a=2;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind5, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=2;a=2;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind6, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=3;a=2;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind7, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=4;a=2;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);

(SynthDef.new(\wind8, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=1;a=3;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind9, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=2;a=3;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind10, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=3;a=3;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind11, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=4;a=3;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);

(SynthDef.new(\wind12, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=1;a=4;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind13, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=2;a=4;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind14, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=3;a=4;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind15, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=4;a=4;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);

(SynthDef.new(\wind16, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=1;a=5;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind17, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=2;a=5;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind18, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=3;a=5;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind19, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=4;a=5;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);

(SynthDef.new(\wind20, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=1;a=6;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind21, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=2;a=6;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind22, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=3;a=6;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
(SynthDef.new(\wind23, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=4;a=6;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,6,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env*12);}).add;);
)


Synth.new(\wind0)
Synth.new(\wind1)
Synth.new(\wind2)
Synth.new(\wind3)
Synth.new(\wind4)
Synth.new(\wind5)
Synth.new(\wind6)
Synth.new(\wind7)
Synth.new(\wind8)
Synth.new(\wind9)
Synth.new(\wind10)
Synth.new(\wind11)
Synth.new(\wind12)
Synth.new(\wind13)
Synth.new(\wind14)
Synth.new(\wind15)
Synth.new(\wind16)
Synth.new(\wind17)
Synth.new(\wind18)
Synth.new(\wind19)
Synth.new(\wind20)
Synth.new(\wind21)
Synth.new(\wind22)
Synth.new(\wind23)