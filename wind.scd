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

e = Buffer.read(s,"/Users/petrostatsiopoulos/Music/SuperCollider Recordings/g/wind hn.wav");

(
(SynthDef.new(\wind0, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=1;a=1;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,4,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env);}).add;);
(SynthDef.new(\wind1, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=2;a=1;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,4,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env);}).add;);
(SynthDef.new(\wind2, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=3;a=1;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,4,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env);}).add;);
(SynthDef.new(\wind3, { arg pitch,x,a; var sig,pass,fund;var env,aud;
	x=4;a=1;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.01,4,pitch.reciprocal),doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),loop:inf),fund*pitch,pass,mul:env);
    Out.ar(0,sig*env);}).add;);
)

Synth.new(\wind0)
Synth.new(\wind1)
Synth.new(\wind2)
Synth.new(\wind3)