/**
* An fft bar visualiser using a SoundFile (tbd)
*/
// to import sound library
import processing.sound.*;

// for SoundFile input
SoundFile music;

// fft bar visualisation
FFT fft;
int bands = 64;
float[] spectrum = new float[bands];
float bandSize;

// getting visual to respond to SoundFile input

void setup() {
    size(1024, 256);
    
    // input SoundFile
    music = new SoundFile(this,"mia and sebs piano.mp3");
    music.play();

    // 
    fft = new FFT(this);

    // start audio input
      music.play();

    // attach fft to audio input
    fft.input(music);
    noStroke();
    bandSize = width / (2*bands);
}

void draw() {
    background(255);
    color violet = #2300D4;
    color orange = #F7BB0A;

    // analyze spectrum of audio input using fft
    fft.analyze(spectrum);

    // loop over each band
    for(int i = 0; i < bands; i++){
        // get percentage of how much we've done so far
        float p = i / (float) bands;
        // interpolate color to find correct color based on our current band
        color c = lerpColor(violet, orange, p);
        fill(c);

        // draw a rect representing frequency with amplitude of spectrum[i]*height*5
        rect(i*(bandSize+10), height/2, bandSize, -spectrum[i]*height*5);
    } 
}
