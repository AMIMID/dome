////////////audio and buffer settings

s.options.numOutputBusChannels=2;
TempoClock.default.tempo_(120/30);
s.options.memSize = 8192*16;

~e.play
~e.numFrames;
e.numChannels;
e.duration;
numSamples = numFrames * numChannels
~e.numFrames * e.numChannels
e.sampleRate
s.sampleRate
e.query

////////////buffer from recording from granulator file
~e = Buffer.read(s,"/Users/petrostatsiopoulos/Music/SuperCollider Recordings/moog noise.wav")

//////////individual Synth Definitions which apply band pass filters in 31 individual tones (case Lamdoma "octave" 32nd) to the noise recording from Granulator file, in stereo)
(

/////////////1st Lamdoma "octave" a=1 from y=(x+a)x where y is the interface tone (final audio)

(SynthDef.new(\wind0, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=1;a=1;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env); Out.ar(0,sig*env*gain);}).add;);
(SynthDef.new(\wind1, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=2;a=1;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env);Out.ar(0,sig*env*gain);}).add;);
(SynthDef.new(\wind2, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=3;a=1;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env); Out.ar(0,sig*env*gain);}).add;);
(SynthDef.new(\wind3, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=4;a=1;fund=220;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env);Out.ar(0,sig*env*gain);}).add;);


(SynthDef.new(\wind4, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=1;a=1;fund=440;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env);Out.ar(0,sig*env*gain);}).add;);
(SynthDef.new(\wind5, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=2;a=1;fund=440;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env); Out.ar(0,sig*env*gain);}).add;);
(SynthDef.new(\wind6, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=3;a=1;fund=440;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env);Out.ar(0,sig*env*gain);}).add;);
(SynthDef.new(\wind7, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=4;a=1;fund=440;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env);Out.ar(0,sig*env*gain);}).add;);


		(SynthDef.new(\wind8, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=1;a=1;fund=880;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env);Out.ar(0,sig*env*gain);}).add;);
(SynthDef.new(\wind9, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=2;a=1;fund=880;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env); Out.ar(0,sig*env*gain);}).add;);
(SynthDef.new(\wind10, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=3;a=1;fund=880;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env);Out.ar(0,sig*env*gain);}).add;);
(SynthDef.new(\wind11, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=4;a=1;fund=880;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env);Out.ar(0,sig*env*gain);}).add;);


(SynthDef.new(\wind12, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=1;a=1;fund=1760;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env);Out.ar(0,sig*env*gain);}).add;);
(SynthDef.new(\wind13, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=2;a=1;fund=1760;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env); Out.ar(0,sig*env*gain);}).add;);
(SynthDef.new(\wind14, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=3;a=1;fund=1760;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env);Out.ar(0,sig*env*gain);}).add;);
(SynthDef.new(\wind15, { arg pitch,x,a,gate,gain; var sig,pass,fund;var env,aud;
	gate=1;gain=1000;x=4;a=1;fund=1760;pass=0.001;pitch=(x+a)/x;env=EnvGen.ar(Env.perc(0.02,4,pitch.reciprocal),gate:gate,doneAction:2);
    sig=BBandPass.ar(PlayBuf.ar(2,0,BufRateScale.kr(0),startPos:~e.numFrames.rand,loop:inf),fund*pitch,pass,mul:env);Out.ar(0,sig*env*gain);}).add;);

			)
///////task that sequences the tones in series and in loop in random intervals

(
Tdef.new(\h,{loop({
Synth.new(\wind0);0.999.rand.wait;
Synth.new(\wind1);0.999.rand.wait;
Synth.new(\wind2);0.999.rand.wait;
Synth.new(\wind3);0.999.rand.wait;
Synth.new(\wind4);0.999.rand.wait;
Synth.new(\wind5);0.999.rand.wait;
Synth.new(\wind6);0.999.rand.wait;
Synth.new(\wind7);0.999.rand.wait;
Synth.new(\wind8);0.999.rand.wait;
Synth.new(\wind9);0.999.rand.wait;
Synth.new(\wind10);0.999.rand.wait;
Synth.new(\wind11);0.999.rand.wait;
Synth.new(\wind12);0.999.rand.wait;
Synth.new(\wind13);0.999.rand.wait;
Synth.new(\wind14);0.999.rand.wait;
Synth.new(\wind15);0.999.rand.wait;
}
)})
)

Tdef(\h).stop;
Tdef(\h).play;
Tdef(\h).clear;

(
Tdef.new(\h,{loop({
Synth.new(\wind0);2.wait;
Synth.new(\wind1);2.wait;
Synth.new(\wind2);2.wait;
Synth.new(\wind3);2.wait;
Synth.new(\wind4);2.wait;
Synth.new(\wind5);2.wait;
Synth.new(\wind6);2.wait;
Synth.new(\wind7);2.wait;
Synth.new(\wind8);2.wait;
Synth.new(\wind9);2.wait;
Synth.new(\wind10);2.wait;
Synth.new(\wind11);2.wait;
Synth.new(\wind12);2.wait;
Synth.new(\wind13);2.wait;
Synth.new(\wind14);2.wait;
Synth.new(\wind15);2.wait;
}
)})
)


/////////////////////intividual Synth definition tone triggers

Synth.new(\wind0);
Synth.new(\wind1);
Synth.new(\wind2);
Synth.new(\wind3);
Synth.new(\wind3);
Synth.new(\wind5);
Synth.new(\wind6);
Synth.new(\wind7);
Synth.new(\wind8);
Synth.new(\wind9);
Synth.new(\wind10);
Synth.new(\wind11);
Synth.new(\wind12);
Synth.new(\wind13);
Synth.new(\wind14);
Synth.new(\wind15);


//////////////////////////////midi interface osc (OpenSoundControl) where keys are a matrix pad, knob/slider1 is gain, knob/slider2 and knob/slider3 are Attack/Decay envelopes for the indiviual or grouped tones. Output is in stereo i.g. synth outputs spatialized audio.
////Extra knobs/sliders can be filters like low pass or high pass. The Lamdoma can be tuned to different fundamental frequences 880-880 Hz, this could be basic knob/slider4

MIDIClient.init;
MIDIIn.connectAll;
~note=Array.newClear(128);
~bend=8192;
~data=127;
~modul=127;

/////
(
MIDIdef.noteOn(\synhtone,{|val,num,chan,src|[val,num,chan,src].postln;
	if( num==38,{Synth.new(\wind0)});
	if( num==39,{Synth.new(\wind1)});
	if( num==50,{Synth.new(\wind2)});
	if( num==51,{Synth.new(\wind3)});
	if( num==52,{Synth.new(\wind3)});
	if( num==53,{Synth.new(\wind5)});
	if( num==53,{Synth.new(\wind6)});
	if( num==55,{Synth.new(\wind7)});
	if( num==56,{Synth.new(\wind8)});
	if( num==57,{Synth.new(\wind9)});
	if( num==58,{Synth.new(\wind10)});
	if( num==59,{Synth.new(\wind11)});
	if( num==60,{Synth.new(\wind12)});
	if( num==61,{Synth.new(\wind13)});
	if( num==62,{Synth.new(\wind13)});
	if( num==63,{Synth.new(\wind15)});
	if( num==63,{Synth.new(\wind16)});
	if( num==65,{Synth.new(\wind17)});
})
)