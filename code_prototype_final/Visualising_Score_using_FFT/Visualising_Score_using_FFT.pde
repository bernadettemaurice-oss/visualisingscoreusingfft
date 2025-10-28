/**
* A Fast Fourier Transform (FFT) bar visualiser visualising frequency (pitch) and 
amplitude (volume) using a SoundFile of me playing piece 'Mia and Sebastian's Theme'
on piano.
* Code adapted from Noah Hradek on Medium 
*/

// to import sound library
import processing.sound.*;

// Declare SoundFile object (music) to provide audio input to fft
SoundFile music;

// to perform frequency analysis
FFT fft;
int bands = 64;
float[] spectrum = new float[bands];
float bandSize;

// drawing visual of FFT responding to SoundFile

void setup() {
  // determining size of canvas
    size(1024, 540);
    
    // Create an object 'music' from the SoundFile class and input the SoundFile
    music = new SoundFile(this,"mia_and_sebs.mp3");
    
    // Play and loop SoundFile
    music.play();
    music.loop(); 
   
    // Creating fft to respond to SoundFile 
    fft = new FFT(this);

    // attaching fft to the audio input
    fft.input(music);
    
    // adjusting the outline and width of the bands
    noStroke();
    bandSize = width / (1.5*bands);
    
    // smooth visual
       smooth();
}

  // drawing visualisation
  void draw() {
  
  // determining background colour
    background(59, 34, 152);
    
    // determining colour of bands
    color yellow = #E3B523;
    color gold = #DEAB12;

    // run fft algorithm on SoundFile input to analyse frequency spectrum of SoundFile 
    fft.analyze(spectrum);
  
    // loop over each frequency band
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
