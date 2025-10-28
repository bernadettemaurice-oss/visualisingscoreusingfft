/** 
* An fft bar visualiser of piece 'Mia and Sebastian's Theme' using a SoundFile 
* Adapted from Noah Hradek on Medium 
*/ 

// to import sound library 
import processing.sound.*; 

// connecting SoundFile input to fft 
SoundFile music; 

// to perform frequency analysis 
FFT fft; 
int bands = 64;
float[] spectrum = new 
float[bands]; 
float bandSize; 

// drawing visual of FFT responding to SoundFile 

void setup() { 

// determining size of canvas 
size(1024, 540);

// input SoundFile 
music = new SoundFile(this,"mia_and_sebs.mp3"); 

// start audio input 
music.play(); 

// instructing fft to respond to SoundFile 
fft = new FFT(this); 

// attach fft to audio input 
fft.input(music); 

// adjusting the outline and width of the bands 
noStroke(); 

// adjusting the width of the bands 
bandSize = width / (1.5*bands); } 

// drawing visualisation 
void draw() { 

// determining background colour 
background(59, 34, 152); 

// determining colour of bands 
color yellow = #E3B523; 
color aureate = #E3B523;

// run fft algorithm to analyse spectrum of SoundFile input
fft.analyze(spectrum); 

// loop over each band 
for(int i = 0; i < bands; i++){ 

// get percentage of how much we've done so far 
float p = i / (float) bands; 

// interpolate color to find correct color based on our current band
color c = lerpColor(yellow, aureate, p); fill(c); 

// draw a rect representing frequency with amplitude of spectrum[i]*height*5 
rect(i*(bandSize+8), height/1.75, bandSize, -spectrum[i]*height*5); }
}
