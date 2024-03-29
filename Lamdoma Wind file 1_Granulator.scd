s.boot;
///////////////buffer settings
e.play
e.numFrames;
e.numChannels;
e.duration;
numSamples = numFrames * numChannels
e.numFrames * e.numChannels
e.sampleRate
s.sampleRate
e.query

////////////////Buffers left and right mono channels/recordings from carrier_so files
e = Buffer.read(s,"/Users/petrostatsiopoulos/Dokuments/PROJECT  FILES/composition/#3/sc/ synth/audio files/left stereo carrier.wav");
k = Buffer.read(s,"/Users/petrostatsiopoulos/Dokuments/PROJECT  FILES/composition/#3/sc/ synth/audio files/right stereo carrier.wav");



////////////////////////Granulator. granulation of carrier recording in stereo with a randomly variable speed of 72Hz.
(
{
var sig1,sig2, winenv,z;

winenv = Env.perc(0.01,10);

z = Buffer.sendCollection(s, winenv.discretize, 1);

sig1 = Out.ar(0,GrainBuf.ar(
	2,
	Dust.ar(72),
	4,
	k.bufnum,
	1,
		LFDNoise1.ar(496).range(0,1),
	2,
		-1,
	z,
	512
	));
	sig2 = Out.ar(0,GrainBuf.ar(
	2,
	Dust.ar(72),
	4,
	e.bufnum,
	1,
		LFDNoise1.ar(496).range(0,1),
	2,
		1,
	z,
	1000
	));

}.play
)




