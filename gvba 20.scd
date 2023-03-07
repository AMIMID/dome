s.options.sampleRate = 44100;
s.options.numBuffers = 1024*4;
s.options.numRGens=64*1;
s.options.numWireBufs=64*1;
s.options.numInputBusChannels=0;å
s.options.outputStreamsEnabled.postln
s.options.device_("USB Sound Device");
s.record(numChannels:6) ;

({Out.ar(2,SoundIn.ar(0))}.play;
s.record(numChannels:6)

s.options.numWireBufs = 1024*4;
ServerOptions.devices
s.options.numOutputBusChannels=2;/////////////40tet1 +40tet2 +
TempoClock.default.tempo_(120/120);
s.options.memSize = 8192*16;
s.waitForBoot
s.maxNodes
s.reboot;

~p1 = Buffer.read(s,"/Users/petrostatsiopoulos/Desktop/l.wav")
~p2 = Buffer.read(s,"/Users/petrostatsiopoulos/Desktop/r.wav")


(
SynthDef.new(\t, {

	var env,gain,duration,face1,face2,face3,face4,face5,face6,face7,face8,face9,
	    face10,face11,face12,face13,face14,face15,face16,face17,face18,face19,face20;
	var edge1a,edge1b,edge1c,edge2a,edge2b,edge2c;
	var edge3a,edge3b,edge3c,edge4a,edge4b,edge4c;
	var edge5a,edge5b,edge5c,edge6a,edge6b,edge6c;
	var edge7a,edge7b,edge7c,edge8a,edge8b,edge8c;
	var edge10a,edge10b,edge10c,edge9a,edge9b,edge9c;
	var edge11a,edge11b,edge11c,edge12a,edge12b,edge12c;
	var edge13a,edge13b,edge13c,edge14a,edge14b,edge14c;
	var edge16a,edge16b,edge16c,edge15a,edge15b,edge15c;
	var edge18a,edge18b,edge18c,edge19a,edge19b,edge19c;
	var edge20a,edge20b,edge20c,edge17a,edge17b,edge17c;
	var v3a,v3b,v3c,v3d,v3e,v3f;
	var v4a,v4b,v4c,v4d,v4e,v4f;
	var v2a,v2b,v2c,v2d,v2e,v2f;
	var v1a,v1b,v1c,v1d,v1e,v1f;
	var v5a,v5b,v5c,v5d,v5e,v5f;
	var v6a,v6b,v6c,v6d,v6e,v6f;
	var v7a,v7b,v7c,v7d,v7e,v7f;
	var v8a,v8b,v8c,v8d,v8e,v8f;
	var v9a,v9b,v9c,v9d,v9e,v9f;
	var v10a,v10b,v10c,v10d,v10e,v10f;
	var v11a,v11b,v11c,v11d,v11e,v11f;
	var v12a,v12b,v12c,v12d,v12e,v12f;
	var v13a,v13b,v13c,v13d,v13e,v13f;
	var v14a,v14b,v14c,v14d,v14e,v14f;
	var v15a,v15b,v15c,v15d,v15e,v15f;
	var v16a,v16b,v16c,v16d,v16e,v16f;
	var v17a,v17b,v17c,v17d,v17e,v17f;
	var v18a,v18b,v18c,v18d,v18e,v18f;
	var v19a,v19b,v19c,v19d,v19e,v19f;
	var v20a,v20b,v20c,v20d,v20e,v20f;
	var azimuth1, azimuth2;

	duration=340;
	gain=1;

	env = EnvGen.ar(Env.new([0,1,1,0],[1,340,1],gain), doneAction: 2);
////////////////////////////////////////////////////////////////////////////	////////
	azimuth1 = Out.ar(20,Pan2.ar(LeakDC.ar(PlayBuf.ar(1,0,BufRateScale.kr(0),inf),mul:env),pos:MouseX.kr(-1,1)));

	azimuth2 = Out.ar(22,Pan2.ar(LeakDC.ar(PlayBuf.ar(1,1,BufRateScale.kr(0),inf),mul:env),pos:MouseY.kr(-1,1)));
	/////////////////////////////////////////////////////////

	face1 = Out.ar(24,PanAz.ar(3,LeakDC.ar(InFeedback.ar(20)),SinOsc.ar(3/4),env,width:2));

	face2 = Out.ar(27,PanAz.ar(3,LeakDC.ar(InFeedback.ar(22)),SinOsc.ar(3/4),env,width:2));

	face3 = Out.ar(30,PanAz.ar(3,LeakDC.ar(InFeedback.ar(21)),SinOsc.ar(3/4),env,width:2));

	face4 = Out.ar(33,PanAz.ar(3,LeakDC.ar(InFeedback.ar(23)),SinOsc.ar(3/4),env,width:2));

	face5 = Out.ar(36,PanAz.ar(3,LeakDC.ar(InFeedback.ar(20)),SinOsc.ar(3/4),env,width:2));

	face6 = Out.ar(39,PanAz.ar(3,LeakDC.ar(InFeedback.ar(22)),SinOsc.ar(3/4),env,width:2));

	face7 = Out.ar(42,PanAz.ar(3,LeakDC.ar(InFeedback.ar(21)),SinOsc.ar(3/4),env,width:2));

	face8 = Out.ar(45,PanAz.ar(3,LeakDC.ar(InFeedback.ar(23)),SinOsc.ar(3/4),env,width:2));

	face9 = Out.ar(48,PanAz.ar(3,LeakDC.ar(InFeedback.ar(20)),SinOsc.ar(3/4),env,width:2));

	face10 = Out.ar(51,PanAz.ar(3,LeakDC.ar(InFeedback.ar(22)),SinOsc.ar(3/4),env,width:2));

	face11 = Out.ar(54,PanAz.ar(3,LeakDC.ar(InFeedback.ar(21)),SinOsc.ar(3/4),env,width:2));

	face12 = Out.ar(57,PanAz.ar(3,LeakDC.ar(InFeedback.ar(23)),SinOsc.ar(3/4),env,width:2));

	face13 = Out.ar(60,PanAz.ar(3,LeakDC.ar(InFeedback.ar(20)),SinOsc.ar(3/4),env,width:2));

	face14 = Out.ar(63,PanAz.ar(3,LeakDC.ar(InFeedback.ar(22)),SinOsc.ar(3/4),env,width:2));

	face15 = Out.ar(66,PanAz.ar(3,LeakDC.ar(InFeedback.ar(21)),SinOsc.ar(3/4),env,width:2));

	face16 = Out.ar(69,PanAz.ar(3,LeakDC.ar(InFeedback.ar(23)),SinOsc.ar(3/4),env,width:2));

	face17 = Out.ar(72,PanAz.ar(3,LeakDC.ar(InFeedback.ar(20)),SinOsc.ar(3/4),env,width:2));

	face18 = Out.ar(75,PanAz.ar(3,LeakDC.ar(InFeedback.ar(22)),SinOsc.ar(3/4),env,width:2));

	face19 = Out.ar(78,PanAz.ar(3,LeakDC.ar(InFeedback.ar(21)),SinOsc.ar(3/4),env,width:2));

	face20 = Out.ar(81,PanAz.ar(3,LeakDC.ar(InFeedback.ar(23)),SinOsc.ar(3/4),env,width:2));

///////////////////////////////////////////////////////////////////////////////

	edge1a = Out.ar(84,Pan2.ar(InFeedback.ar(24),SinOsc.ar(3/4),env));
	edge1b = Out.ar(86,Pan2.ar(InFeedback.ar(25),SinOsc.ar(3/4),env));
	edge1c = Out.ar(88,Pan2.ar(InFeedback.ar(26),SinOsc.ar(3/4),env));

	edge2a = Out.ar(90,Pan2.ar(InFeedback.ar(27),SinOsc.ar(3/4),env));
	edge2b = Out.ar(92,Pan2.ar(InFeedback.ar(28),SinOsc.ar(3/4),env));
	edge2c = Out.ar(94,Pan2.ar(InFeedback.ar(29),SinOsc.ar(3/4),env));

	edge3a = Out.ar(96,Pan2.ar(InFeedback.ar(30),SinOsc.ar(3/4),env));
	edge3b = Out.ar(98,Pan2.ar(InFeedback.ar(31),SinOsc.ar(3/4),env));
	edge3c = Out.ar(100,Pan2.ar(InFeedback.ar(32),SinOsc.ar(3/4),env));

	edge4a = Out.ar(102,Pan2.ar(InFeedback.ar(33),SinOsc.ar(3/4),env));
	edge4b = Out.ar(104,Pan2.ar(InFeedback.ar(34),SinOsc.ar(3/4),env));
	edge4c = Out.ar(106,Pan2.ar(InFeedback.ar(35),SinOsc.ar(3/4),env));

	edge5a = Out.ar(108,Pan2.ar(InFeedback.ar(36),SinOsc.ar(3/4),env));
	edge5b = Out.ar(110,Pan2.ar(InFeedback.ar(37),SinOsc.ar(3/4),env));
	edge5c = Out.ar(112,Pan2.ar(InFeedback.ar(38),SinOsc.ar(3/4),env));

	edge6a = Out.ar(114,Pan2.ar(InFeedback.ar(39),SinOsc.ar(3/4),env));
	edge6b = Out.ar(116,Pan2.ar(InFeedback.ar(40),SinOsc.ar(3/4),env));
	edge6c = Out.ar(118,Pan2.ar(InFeedback.ar(41),SinOsc.ar(3/4),env));

	edge7a = Out.ar(120,Pan2.ar(InFeedback.ar(42),SinOsc.ar(3/4),env));
	edge7b = Out.ar(122,Pan2.ar(InFeedback.ar(43),SinOsc.ar(3/4),env));
	edge7c = Out.ar(124,Pan2.ar(InFeedback.ar(44),SinOsc.ar(3/4),env));

	edge8a = Out.ar(126,Pan2.ar(InFeedback.ar(45),SinOsc.ar(3/4),env));
	edge8b = Out.ar(128,Pan2.ar(InFeedback.ar(46),SinOsc.ar(3/4),env));
	edge8c = Out.ar(130,Pan2.ar(InFeedback.ar(47),SinOsc.ar(3/4),env));

	edge9a = Out.ar(132,Pan2.ar(InFeedback.ar(48),SinOsc.ar(3/4),env));
	edge9b = Out.ar(134,Pan2.ar(InFeedback.ar(49),SinOsc.ar(3/4),env));
	edge9c = Out.ar(136,Pan2.ar(InFeedback.ar(50),SinOsc.ar(3/4),env));

	edge10a = Out.ar(138,Pan2.ar(InFeedback.ar(51),SinOsc.ar(3/4),env));
	edge10b = Out.ar(140,Pan2.ar(InFeedback.ar(52),SinOsc.ar(3/4),env));
	edge10c = Out.ar(142,Pan2.ar(InFeedback.ar(53),SinOsc.ar(3/4),env));

	edge11a = Out.ar(144,Pan2.ar(InFeedback.ar(54),SinOsc.ar(3/4),env));
	edge11b = Out.ar(146,Pan2.ar(InFeedback.ar(55),SinOsc.ar(3/4),env));
	edge11c = Out.ar(148,Pan2.ar(InFeedback.ar(56),SinOsc.ar(3/4),env));

	edge12a = Out.ar(150,Pan2.ar(InFeedback.ar(57),SinOsc.ar(3/4),env));
	edge12b = Out.ar(152,Pan2.ar(InFeedback.ar(58),SinOsc.ar(3/4),env));
	edge12c = Out.ar(154,Pan2.ar(InFeedback.ar(59),SinOsc.ar(3/4),env));

	edge13a = Out.ar(156,Pan2.ar(InFeedback.ar(60),SinOsc.ar(3/4),env));
	edge13b = Out.ar(158,Pan2.ar(InFeedback.ar(61),SinOsc.ar(3/4),env));
	edge13c = Out.ar(160,Pan2.ar(InFeedback.ar(62),SinOsc.ar(3/4),env));

	edge14a = Out.ar(162,Pan2.ar(InFeedback.ar(63),SinOsc.ar(3/4),env));
	edge14b = Out.ar(164,Pan2.ar(InFeedback.ar(64),SinOsc.ar(3/4),env));
	edge14c = Out.ar(166,Pan2.ar(InFeedback.ar(65),SinOsc.ar(3/4),env));

	edge15a = Out.ar(168,Pan2.ar(InFeedback.ar(66),SinOsc.ar(3/4),env));
	edge15b = Out.ar(170,Pan2.ar(InFeedback.ar(67),SinOsc.ar(3/4),env));
	edge15c = Out.ar(172,Pan2.ar(InFeedback.ar(68),SinOsc.ar(3/4),env));

	edge16a = Out.ar(174,Pan2.ar(InFeedback.ar(69),SinOsc.ar(3/4),env));
	edge16b = Out.ar(176,Pan2.ar(InFeedback.ar(70),SinOsc.ar(3/4),env));
	edge16c = Out.ar(178,Pan2.ar(InFeedback.ar(71),SinOsc.ar(3/4),env));

	edge17a = Out.ar(180,Pan2.ar(InFeedback.ar(72),SinOsc.ar(3/4),env));
	edge17b = Out.ar(182,Pan2.ar(InFeedback.ar(73),SinOsc.ar(3/4),env));
	edge17c = Out.ar(184,Pan2.ar(InFeedback.ar(74),SinOsc.ar(3/4),env));

	edge18a = Out.ar(186,Pan2.ar(InFeedback.ar(75),SinOsc.ar(3/4),env));
	edge18b = Out.ar(188,Pan2.ar(InFeedback.ar(76),SinOsc.ar(3/4),env));
	edge18c = Out.ar(190,Pan2.ar(InFeedback.ar(77),SinOsc.ar(3/4),env));

	edge19a = Out.ar(192,Pan2.ar(InFeedback.ar(78),SinOsc.ar(3/4),env));
	edge19b = Out.ar(194,Pan2.ar(InFeedback.ar(79),SinOsc.ar(3/4),env));
	edge19c = Out.ar(196,Pan2.ar(InFeedback.ar(80),SinOsc.ar(3/4),env));

	edge20a = Out.ar(198,Pan2.ar(InFeedback.ar(81),SinOsc.ar(3/4),env));
	edge20b = Out.ar(200,Pan2.ar(InFeedback.ar(82),SinOsc.ar(3/4),env));
	edge20c = Out.ar(202,Pan2.ar(InFeedback.ar(83),SinOsc.ar(3/4),env));



////////////////////////////////////////////////////////////////////////////

	v1a = Out.ar(0,LeakDC.ar(InFeedback.ar(84))*env);
	v1b = Out.ar(0,LeakDC.ar(InFeedback.ar(85))*env);
	v1c = Out.ar(0,LeakDC.ar(InFeedback.ar(86))*env);
	v1d = Out.ar(0,LeakDC.ar(InFeedback.ar(87))*env);
	v1e = Out.ar(0,LeakDC.ar(InFeedback.ar(88))*env);
	v1f = Out.ar(0,LeakDC.ar(InFeedback.ar(89))*env);

	v2a = Out.ar(1,LeakDC.ar(InFeedback.ar(90))*env);
	v2b = Out.ar(1,LeakDC.ar(InFeedback.ar(91))*env);
	v2c = Out.ar(1,LeakDC.ar(InFeedback.ar(92))*env);
	v2d = Out.ar(1,LeakDC.ar(InFeedback.ar(93))*env);
	v2e = Out.ar(1,LeakDC.ar(InFeedback.ar(94))*env);
	v2f = Out.ar(1,LeakDC.ar(InFeedback.ar(95))*env);

	v3a = Out.ar(2,LeakDC.ar(InFeedback.ar(96))*env);
	v3b = Out.ar(2,LeakDC.ar(InFeedback.ar(97))*env);
	v3c = Out.ar(2,LeakDC.ar(InFeedback.ar(98))*env);
	v3d = Out.ar(2,LeakDC.ar(InFeedback.ar(99))*env);
	v3e = Out.ar(2,LeakDC.ar(InFeedback.ar(100))*env);
	v3f = Out.ar(2,LeakDC.ar(InFeedback.ar(101))*env);

	v4a = Out.ar(3,LeakDC.ar(InFeedback.ar(102))*env);
	v4b = Out.ar(3,LeakDC.ar(InFeedback.ar(103))*env);
	v4c = Out.ar(3,LeakDC.ar(InFeedback.ar(104))*env);
	v4d = Out.ar(3,LeakDC.ar(InFeedback.ar(105))*env);
	v4e = Out.ar(3,LeakDC.ar(InFeedback.ar(106))*env);
	v4f = Out.ar(3,LeakDC.ar(InFeedback.ar(107))*env);

	v5a = Out.ar(4,LeakDC.ar(InFeedback.ar(108))*env);
	v5b = Out.ar(4,LeakDC.ar(InFeedback.ar(109))*env);
	v5c = Out.ar(4,LeakDC.ar(InFeedback.ar(110))*env);
	v5d = Out.ar(4,LeakDC.ar(InFeedback.ar(111))*env);
	v5e = Out.ar(4,LeakDC.ar(InFeedback.ar(112))*env);
	v5f = Out.ar(4,LeakDC.ar(InFeedback.ar(113))*env);

	v6a = Out.ar(5,LeakDC.ar(InFeedback.ar(114))*env);
	v6b = Out.ar(5,LeakDC.ar(InFeedback.ar(115))*env);
	v6c = Out.ar(5,LeakDC.ar(InFeedback.ar(116))*env);
	v6d = Out.ar(5,LeakDC.ar(InFeedback.ar(117))*env);
	v6e = Out.ar(5,LeakDC.ar(InFeedback.ar(118))*env);
	v6f = Out.ar(5,LeakDC.ar(InFeedback.ar(119))*env);

	v7a = Out.ar(6,LeakDC.ar(InFeedback.ar(120))*env);
	v7b = Out.ar(6,LeakDC.ar(InFeedback.ar(121))*env);
	v7c = Out.ar(6,LeakDC.ar(InFeedback.ar(122))*env);
	v7d = Out.ar(6,LeakDC.ar(InFeedback.ar(123))*env);
	v7e = Out.ar(6,LeakDC.ar(InFeedback.ar(124))*env);
	v7f = Out.ar(6,LeakDC.ar(InFeedback.ar(125))*env);


	v8a = Out.ar(7,LeakDC.ar(InFeedback.ar(126))*env);
	v8b = Out.ar(7,LeakDC.ar(InFeedback.ar(127))*env);
	v8c = Out.ar(7,LeakDC.ar(InFeedback.ar(128))*env);
	v8d = Out.ar(7,LeakDC.ar(InFeedback.ar(129))*env);
	v8e = Out.ar(7,LeakDC.ar(InFeedback.ar(130))*env);
	v8f = Out.ar(7,LeakDC.ar(InFeedback.ar(131))*env);

	v9a = Out.ar(8,LeakDC.ar(InFeedback.ar(132))*env);
	v9b = Out.ar(8,LeakDC.ar(InFeedback.ar(133))*env);
	v9c = Out.ar(8,LeakDC.ar(InFeedback.ar(134))*env);
	v9d = Out.ar(8,LeakDC.ar(InFeedback.ar(135))*env);
	v9e = Out.ar(8,LeakDC.ar(InFeedback.ar(136))*env);
	v9f = Out.ar(8,LeakDC.ar(InFeedback.ar(137))*env);

	v10a = Out.ar(9,LeakDC.ar(InFeedback.ar(138))*env);
	v10b = Out.ar(9,LeakDC.ar(InFeedback.ar(139))*env);
	v10c = Out.ar(9,LeakDC.ar(InFeedback.ar(140))*env);
	v10d = Out.ar(9,LeakDC.ar(InFeedback.ar(141))*env);
	v10e = Out.ar(9,LeakDC.ar(InFeedback.ar(142))*env);
	v10f = Out.ar(9,LeakDC.ar(InFeedback.ar(143))*env);

	v11a = Out.ar(10,LeakDC.ar(InFeedback.ar(144))*env);
	v11b = Out.ar(10,LeakDC.ar(InFeedback.ar(145))*env);
	v11c = Out.ar(10,LeakDC.ar(InFeedback.ar(146))*env);
	v11d = Out.ar(10,LeakDC.ar(InFeedback.ar(147))*env);
	v11e = Out.ar(10,LeakDC.ar(InFeedback.ar(148))*env);
	v11f = Out.ar(10,LeakDC.ar(InFeedback.ar(149))*env);


	v12a = Out.ar(11,LeakDC.ar(InFeedback.ar(150))*env);
	v12b = Out.ar(11,LeakDC.ar(InFeedback.ar(151))*env);
	v12c = Out.ar(11,LeakDC.ar(InFeedback.ar(152))*env);
	v12d = Out.ar(11,LeakDC.ar(InFeedback.ar(153))*env);
	v12e = Out.ar(11,LeakDC.ar(InFeedback.ar(154))*env);
	v12f = Out.ar(11,LeakDC.ar(InFeedback.ar(155))*env);

	v13a = Out.ar(12,LeakDC.ar(InFeedback.ar(156))*env);
	v13b = Out.ar(12,LeakDC.ar(InFeedback.ar(157))*env);
	v13c = Out.ar(12,LeakDC.ar(InFeedback.ar(158))*env);
	v13d = Out.ar(12,LeakDC.ar(InFeedback.ar(159))*env);
	v13e = Out.ar(12,LeakDC.ar(InFeedback.ar(160))*env);
	v13f = Out.ar(12,LeakDC.ar(InFeedback.ar(161))*env);

	v14a = Out.ar(13,LeakDC.ar(InFeedback.ar(162))*env);
	v14b = Out.ar(13,LeakDC.ar(InFeedback.ar(163))*env);
	v14c = Out.ar(13,LeakDC.ar(InFeedback.ar(164))*env);
	v14d = Out.ar(13,LeakDC.ar(InFeedback.ar(165))*env);
	v14e = Out.ar(13,LeakDC.ar(InFeedback.ar(166))*env);
	v14f = Out.ar(13,LeakDC.ar(InFeedback.ar(167))*env);

	v15a = Out.ar(14,LeakDC.ar(InFeedback.ar(168))*env);
	v15b = Out.ar(14,LeakDC.ar(InFeedback.ar(169))*env);
	v15c = Out.ar(14,LeakDC.ar(InFeedback.ar(170))*env);
	v15d = Out.ar(14,LeakDC.ar(InFeedback.ar(171))*env);
	v15e = Out.ar(14,LeakDC.ar(InFeedback.ar(172))*env);
	v15f = Out.ar(14,LeakDC.ar(InFeedback.ar(173))*env);

	v16a = Out.ar(15,LeakDC.ar(InFeedback.ar(174))*env);
	v16b = Out.ar(15,LeakDC.ar(InFeedback.ar(175))*env);
	v16c = Out.ar(15,LeakDC.ar(InFeedback.ar(176))*env);
	v16d = Out.ar(15,LeakDC.ar(InFeedback.ar(177))*env);
	v16e = Out.ar(15,LeakDC.ar(InFeedback.ar(178))*env);
	v16f = Out.ar(15,LeakDC.ar(InFeedback.ar(179))*env);

	v17a = Out.ar(16,LeakDC.ar(InFeedback.ar(180))*env);
	v17b = Out.ar(16,LeakDC.ar(InFeedback.ar(181))*env);
	v17c = Out.ar(16,LeakDC.ar(InFeedback.ar(182))*env);
	v17d = Out.ar(16,LeakDC.ar(InFeedback.ar(183))*env);
	v17e = Out.ar(16,LeakDC.ar(InFeedback.ar(184))*env);
	v17f = Out.ar(16,LeakDC.ar(InFeedback.ar(185))*env);


	v18a = Out.ar(17,LeakDC.ar(InFeedback.ar(186))*env);
	v18b = Out.ar(17,LeakDC.ar(InFeedback.ar(187))*env);
	v18c = Out.ar(17,LeakDC.ar(InFeedback.ar(188))*env);
	v18d = Out.ar(17,LeakDC.ar(InFeedback.ar(189))*env);
	v18e = Out.ar(17,LeakDC.ar(InFeedback.ar(190))*env);
	v18f = Out.ar(17,LeakDC.ar(InFeedback.ar(191))*env);

	v19a = Out.ar(18,LeakDC.ar(InFeedback.ar(192))*env);
	v19b = Out.ar(18,LeakDC.ar(InFeedback.ar(193))*env);
	v19c = Out.ar(18,LeakDC.ar(InFeedback.ar(194))*env);
	v19d = Out.ar(18,LeakDC.ar(InFeedback.ar(195))*env);
	v19e = Out.ar(18,LeakDC.ar(InFeedback.ar(196))*env);
	v19f = Out.ar(18,LeakDC.ar(InFeedback.ar(197))*env);

	v20a = Out.ar(19,LeakDC.ar(InFeedback.ar(198))*env);
	v20b = Out.ar(19,LeakDC.ar(InFeedback.ar(199))*env);
	v20c = Out.ar(19,LeakDC.ar(InFeedback.ar(200))*env);
	v20d = Out.ar(19,LeakDC.ar(InFeedback.ar(201))*env);
	v20e = Out.ar(19,LeakDC.ar(InFeedback.ar(202))*env);
	v20f = Out.ar(19,LeakDC.ar(InFeedback.ar(203))*env);




}).add;
)

Synth.new(\t);

//blrfud