/**
* A Fast Fourier Transform (FFT) bar visualiser that visualises frequency (pitch) and 
* amplitude (volume) using a SoundFile of me playing 'Mia and Sebastian's Theme'
* on piano.
* Code adapted from Noah Hradek on Medium 
*/

// Import Processing sound library
import processing.sound.*;

// Declare reference variable 'music' to provide audio input to fft
SoundFile music;

// declare reference variable 'fft' setting up FFT object to perform frequency analysis
FFT fft;

// variable int to set number of bands on canvas
int bands = 64;
// declare a float array 'spectrum' and make new array using 'bands' to define size
float[] spectrum = new float[bands];
float bandSize;

// drawing visual of FFT responding to SoundFile

    // using function setup() to intialise visual
    void setup() {
  
    // determining size of canvas
    size(1024, 540);
    
// Use operator '= new' to create SoundFile object, assign SoundFile to variable 'music' and input mp3
    music = new SoundFile(this,"mia_and_sebs.mp3");
    
    // Play and loop SoundFile using variable 'music'
    music.loop(); 
   
    // using reference variable fft to create FFT object to respond to SoundFile
    fft = new FFT(this);

    // attaching fft to the audio input
    fft.input(music);
    
    // adjusting the outline and width of the bands
    noStroke();
    bandSize = width / (1.5*bands);
    
    // using function to smooth visual
       smooth();
}

// using function draw() to continually loop visualisation
   void draw() {
  
   // determining background colour using function background (RGB)
    background(59, 34, 152);
    
    // determining colour of bands and defining variables
    color yellow = #E3B523;
    color gold = #DEAB12;

// run fft algorithm on SoundFile input to analyse frequency spectrum 
   fft.analyze(spectrum);
  
   // using a loop on each frequency band
   for(int i = 0; i < bands; i++){
      
   // get percentage of how far into the loop we are 
   float p = i / (float) bands;
        
   // using percentage to interpolate color, creating a gradient effect across bands
   color c = lerpColor(yellow, gold, p);
        
   // get brightness of bands to change based on amplitude 
   float amp = constrain(spectrum[i] * 15, 0, 1); 
       
   // colour interpolating between c and gold according to amplitude
    color reactive = lerpColor(color(152,127,52), c, amp);  
    fill(reactive);

 // draw a rectangle bar representing frequency with amplitude of spectrum[i]*height*5   
    rect(i*(bandSize+8), height/1.75, bandSize, -spectrum[i]*height*5, 4);
     
  
    } 
}
