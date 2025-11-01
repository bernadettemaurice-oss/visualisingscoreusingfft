# visualisingscoreusingfft
> This project uses a Fast Fourier Transform (FFT) to visualise the frequency and amplitude of an imported SoundFile. The SoundFile is the piece 'Mia and Sebastian's Theme' from the 2016 film La La Land being played on piano. This project was adapted from Noah Hradek on [ Medium ](https://medium.com/@noahhradek/making-a-frequency-visualizer-in-processing-e3750c699a7b). This is in the repository in the folder reference_code. 
 
## Table of Contents
* [General Info](#general-information)
* [Coding Environment](#Coding-Environment)
* [Functionality](#functionality)
* [Setup](#setup)
* [Project Status](#project-status)
* [Room for Improvement/Extension](#room-for-improvement/extension)
* [Acknowledgements](#acknowledgements)
<!-- * [License](#license) -->


## General Information
This project falls under the artistic challenge category. I really love the score from this film and wanted to see how the code languages of music and java in Processing could intersect to create a piece of visual art. This project evolved as the semester progressed, with this initially being planned as a soundwave style drawing, but through research was inspired to add a technical aspect to this project, finding I could measure the frequency and amplitude of a SoundFile in Processing. I was excited to learn more about how sound is visualised in different ways using Processing and do my own experimentation in Processing to develop my skills using the program. 


## Coding Environment
Though I had initially planned to use both Processing and TunePad, I decided to challenge myself in a different way by recording myself playing the piece instead of developing it in TunePad, bringing this outside skillset into the coding environment. I then used Processing to create my visualisation, inputting the SoundFile into the existing source code. Using Processing's Sound Library, as well as Processing in Java, Processing was able to visualise the frequency and amplitude of the SoundFile. I challenged myself by implementing a few stretch goals to change the visualisation's shape and colour.

## Functionality
The main function of this visual is representing and analysing the SoundFile input, which was done using the FFT in Processing's sound library. 
- The sound is divided into 64 frequency bands across the canvas, controlled by the variable int = 64. These bars on the x axis represent a range of frequencies (the ear perceives this as pitch) from bass to treble, with bass on the left and treble on the right.
- On the y axis, the visual represents the amplitude of the SoundFile, with the height of the bands representing the volume/strength of the sound.
- To add an extra challenge I wanted the colour on the bars to be dynamic, as in the original source code the colour across the bars was an interpolation of 2 colours. Instead, the colour is reactive, lighting up in response to amplitude.
- The SoundFile plays and loops automatically using music.loop().
- The colours of the visual are inspired by the colour palette of 'La La Land' with the indigo background and golden yellow bars reflecting the colours on the film's poster. I experimented with a few different styles and shapes but felt that the bands with this colouring was the best fit aesthetically and technically.
- Some iterations of my prototype are in the repository under ver_one and ver_two. Ver_one is the SoundFile input with the reference code, while ver_two documents the changes in colour from the reference. 

## Setup
This project didn't require much setup. Once I downloaded the Processing sound library and inputted the source code, the FFT visualiser was able to run. All I needed was Processing downloaded onto my device, the sound library and java, and an mp3 to input into the project. 

## Project Status
Project is _complete._ 


## Room for Improvement/Extension
Though there are a variety of ways I could experiment with and extend this project, below are some potential extensions of the project I could try and areas I could improve on. 
- I could try using TunePad to bridge two different coding environments together.
- I believe in future, I could elevate this project by using a different shape/style to visualise the frequency and amplitude like a SoundWave. Though I did try and experiment with this, it only produced a singular line, so I could maybe in future do my own drawing of a SoundWave with bars - similar to this visualisation by [thedotisblack](https://www.youtube.com/shorts/FSV5qoVCy2g).
- Could extend myself by labelling the axes; labelling where the bass, mid and treble zones are across the FFT visual. 


## Acknowledgements
This project was inspired by the work of Noah Hradek posted on [ Medium ](https://medium.com/@noahhradek/making-a-frequency-visualizer-in-processing-e3750c699a7b).I also used a few other resources to help me to import my SoundFile and implement my stretch goals. I used Processing's online resources, as well as resources from YouTube. To import my SoundFile, I used a tutorial from [John McCaffrey](https://www.youtube.com/watch?v=I6fG1wneXWo), which was particularly helpful. I also used the feedback from my peers and tutor during tutorials to troubleshoot issues and advance my project, and thank them for their input across the semester. This README was adapted from ritaly.(2018). 


<!-- Optional -->
<!-- ## License -->
<!-- This project is open source and available under the [... License](). -->
