
// This is not a score, but a typical setup of code which I use in the performance of "blur:spin"
//Comments are used to remind me of the order of various events.
//Alot of this is code which has been written onthe fly and is very disorganised.

//Pre Set Up

//Boot server

s.makeWindow;




//Load Synth def:

SynthDef("playstereo",
{ arg out=0, buf, amp=0.1, rate = 1;
	var pb;
	pb = PlayBuf.ar(2, buf, BufRateScale.kr(buf) * rate , doneAction:2) * amp;
	Out.ar(out, pb)
}).add;


//Load Buffers (pick from folder called "Soundfiles for blurspin");



~buffer = Buffer.read(s, "drag soundfile from folder here");
~buffer2 = Buffer.read(s, "drag soundfile from folder here");
~buffer3 = Buffer.read(s, "drag soundfile from folder here");
~buffer4 = Buffer.read(s, "drag soundfile from folder here");




//create more as needed


//Open this

NdefMixer(s);

PdefAllGui;

//During Performance


Ndef(\ambien, {a = HPF.ar(ar(BrownNose,5e-



Ndef(\ambient, {a=HPF.ar(ar(PinkNoise,5e-3),10)*Line.kr(0,1,9);ar(GVerb,({|i|ar(Ringz,a*LFNoise1.kr(0.5+0.2.rand),55*i+80,0.2)}!150).sum,70,99).tanh});


// Boilerplate Code
// Create more as needed



Ndef(\sound2,{PlayBuf.ar(1,~buffer,loop:1)}).play;




Ndef(\crack)[1] = \set -> Pbind(\dur, 0.125, \chaos, Pwhite(0.1, 0.6)


Ndef(\crack)[1] = \set -> Pbind(\dur, 0.125, \chaos, Pwhite(0.1, 0.6) )

//Important Ndef!
Ndef('x',{x=Ndef('x').ar+0.01;a=BPF.ar(x,6**Latch.ar(x,Dust.ar(x))*200,0.1).sin;9.do{a=AllpassN.ar(a,0.2,{0.2.rand}!2,9)};a+a.mean}).play;


Ndef(\soundnorah, Pbind(\dur, 0.5, \buf, ~buffer, \rate, 1, \instrument, \playstereo, \pan, Pwhite(-1, 1)));


Ndef.ar(\x, 5); Ndef('x',{Normalizer.ar(FreqShift.ar(Rotate2.ar(*Ndef('x').ar++1/8).tanh,30*[-3,0.995])+Dust2.ar(1!2,0.005),1,0.5)}).play;

Ndef.ar(


Ndef(\ambient, {a=HPF.ar(ar(PinkNoise,5e-3),10)*Line.kr(0,1,9);ar(GVerb,({|i|ar(Ringz,a*LFNoise1.kr(0.05+0.1.rand),55*i+60,0.2)}!99).sum,70,99).tanh});


Ndef(\sines,  {|rate = 0.4| DelayN.ar(BRF.ar(Mix(SinOsc.ar([[460, 443] * 1.75, [440, 446] * 1.25, [448, 449] * 1.625, [880, 882.2] * 1/9]))*0.05+Rotate2.ar(*(Ndef(\y).ar*2).tanh++0.1),20**LFNoise1.kr(4)*500,1),0.125,0.125)});




Ndef.ar(\y, 5); Ndef(\y, { SinOsc.ar(PinkNoise.ar(30!2, 150), Ndef(\y).ar * LFNoise0.kr(2!3,2,2)) }).play;


Ndef(\drone1, {{{({|i|x=i+1;SinOsc.ar(30*x+LFNoise2.ar(0.1).range(-2,2),0,LFNoise2.ar(0.5)*(Line.ar(0,0.1,99.rand)/(x*0.2)))}!rrand(9,28)).sum}!2}}).play;




Ndef(\sound1, {Pan2.ar(Mix.new(Gendy3.ar(freq:([1,1.2,1.3,1.76,2.3]*MouseX.kr(3,17,'exponential')),mul:0.2)))}).play;


	Ndef(\sound1, {Pan3.ar(Mix.new(Gendy2.ar(freq:([2,3,4,1,1.7]*MouseX.kr(4,1



Tdef(\crackRes, {
	loop{
Ndef(\crack)[1] = \filter -> {|in| Klank.ar(`[{rrand(220, 880)} ! 10 ], in, decayscale:\dec.kr(0.1))};
		0.25.wait;
}}).play




//auto creation
Ndef(\norah2, {Pan2.ar(CombN.ar(Resonz.ar(Gendy1.ar(3,4,minfreq:1, maxfreq:MouseX.kr(10,900), durscale:0, initCPs:10),MouseY.kr(60,1000), 0.1),0.1,0.1,5, 0.6), 0.0)}).play;


Ndef(\norah2, { TDuty.ar(Dseq([0.5, 0.7, 0.8, 0.5], inf)) }).play;

//
Ndef(\drone1, {{{({|i|x=i+1;SinOsc.ar(30*x+LFNoise2.ar(0.1).range(-2,2),0,LFNoise2.ar(0.5)*(Line.ar(0,0.1,99.rand)/(x*0.2)))}!rrand(9,28)).sum}!2}}).play;


//remember to play these together
Ndef(\crack2,  { | in | Crackle.ar( LFNoise0.kr().range(0.1, 1.75), 0.1, 0.1 )  }).play // DO NOT PLAY

Ndef(\crack,  { | in | Crackle.ar( LFNoise0.kr(8).range(0.1, 1.75), 0.1, 0.1 )  }).play



// Good Beat
(
Ndef(\d, {
	var in = Ndef(\crack).ar;
	Splay.ar(
		Ringz.ar( in,
			{ ExpRand(200, 1200) }!4,
			\decay.kr(0.5, 0.7 )
		)
	)
})
)



(
Ndef(\dust2, {
	var in = Ndef(\crack).ar;
	Splay.ar(
		Ringz.ar( in,
			{ ExpRand(200, 1200) }!4,
			\decay.kr(0.2, 0.5 )
		)
	)
})
)




//bass
Ndef(\y_m_1, {



	var source = SinOsc.ar(PinkNoise.ar(30!2, 120), Ndef(\y).ar * LFNoise0.kr(2!3,2,2));

	source = Normalizer.ar(source,0.4);
	source = (source*SinOsc.ar(10)).softclip;
	source = Pan2.ar(source,Lag.kr(LFNoise2.kr(0.5)));
	source = CombN.ar(source,0.4,0.4,3,mul:0.25);

}).play;

//reverb
Ndef(\norah1, {Pan2.ar(CombN.ar(Resonz.ar(Gendy1.ar(2,3,minfreq:1, maxfreq:MouseX.kr(10,900), durscale:0, initCPs:30),MouseY.kr(50,1000), 0.1),0.1,0.4,5, 0.9), 0.0)}).play;

Ndef.ar(\


//Important!!!
				Ndef('x',{x=Ndef('x').ar+0.01;a=BPF.ar(x,6**Latch.ar(x,Dust.ar(x))*200,0.1).sin;9.do{a=AllpassN.ar(a,0.2,{1.5.rand}!2,9)};a+a.mean}).play;

//BEAT!

Ndef('y',{Normalizer.ar(FreqShift.ar(Rotate2.ar(*Ndef('y').ar++1/8).tanh,20*[-3,0.995])+Dust.ar(1!2,0.005),1,0.5)}).play;


				NdefMixer(s);

Ndef.ar(\x, 5); Ndef(\x,{DelayN.ar(BRF.ar(Saw.ar(10!3)*0.01+Rotate2.ar(*(Ndef(\y).ar*2).tanh++0.1),20**LFNoise1.kr(0.6)*500,1),1/3,1/3)}).play;


				Ndef.ar(\x, 5); Ndef(\x,{DelayN.ar(BFF.ar(Saw.ar(10!3)


//

 Ndef(\waveloss, { var in,sig;

	in =  Ndef(\y).ar;
	in = PitchShift.ar(in,windowSize: \grain_size.kr(2) , pitchRatio: \pitch.kr(2),pitchDispersion:\pitch_rand.kr(0.01),timeDispersion: \stretch.kr(1));
	sig = WaveLoss.ar(in,drop: \drop.kr(20),outof: \outof.kr(40),mode: 1);
	sig =Decimator.ar(sig,rate: \rate.kr(44100),bits: \bits.kr(24));
	//sig = LPF.ar(in: sig, ffreq: \freq_c.kr(4000),res:\res.kr(0.1))
});

//



Ndef(\wave1, {{({|i|x=i+1;SinOsc.ar(30*x+LFNoise2.ar(0.1).range(-2,2),0,LFNoise2.ar(0.5)*(Line.ar(0,0.1,99.rand)/(x*0.2)))}!rrand(9,28)).sum}!2}}


//

