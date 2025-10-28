# visualisingscoreusingfft
> This project uses a Fast Fourier Transform (FFT) to visualise the frequency and amplitude of an imported SoundFile. The SoundFile is the piece 'Mia and Sebastian's Theme' from the 2016 film La La Land being played on piano. This project was adapted from Noah Hradek on [ Medium ](https://medium.com/@noahhradek/making-a-frequency-visualizer-in-processing-e3750c699a7b)
 
## Table of Contents
* [General Info](#general-information)
* [Coding Environment](#Coding-Environment)
* [Features](#features)
* [Screenshots](#screenshots)
* [Setup](#setup)
* [Project Status](#project-status)
* [Room for Improvement](#room-for-improvement)
* [Acknowledgements](#acknowledgements)
<!-- * [License](#license) -->


## General Information
This project falls under the artistic challenge category. I really love the score from this film and wanted to see how the code languages of music and java in processing could intersect to create a piece of visual art. This project evolved as the semester progressed, with this initially being planned as a soundwave style drawing, but through research was inspired to add a technical aspect to this project, finding I could measure the frequency and amplitude of a SoundFile in processing. I was excited to learn more about how sound is visualised in different ways using processing and do my own experimentation in processing to develop my skills using the program. 


## Coding Environment
Though I had initially planned to use both Processing and TunePad, I decided to challenge myself differently by recording myself playing the piece instead of developing it in TunePad, bringing this outside skillset into the coding environment. I then used Processing to create my visualisation, inputting the SoundFile into the existing source code. Using Processing's Sound Library, as well as Processing in Java, Processing was able to visualise the frequency and amplitude of the SoundFile. I challenged myself by implementing a few stretch goals to change the visualisation's shape and colour.

## Features
There are several core features that make this visual unique. The FFT creates 64 frequency bands across the canvas that represent frequency (the ear perceives this as pitch) on the x axis, and amplitude (perceived as volume) on the y axis. The FFT visualiser creates frequency bands, which were determined by using ? and the amount of bands across the spectrum is determined by int = 64. The SoundFile plays and loops using the class music.play and music.loop. The design of the visual was inspired by the colour palette of the film, with the indigo in the background and the frequency bands yellow. Instead of the colour across the bands being fixed, I decided to try to and get the colour to also respond to sound, with the bands filled according to the sound's amplitude. This creates a vibrant and reactive visualisation. I tried a few different styles and shapes but felt that the bands with this colouring was the most aesthetically pleasing.   

## Screenshots
![Example screenshot](./img/screenshot.png)
<!-- If you have screenshots you'd like to share, include them here. -->

## Setup
This project didn't require much setup. Once I downloaded the processing sound library and inputted the source code, the FFT visualiser was able to run. All I needed was processing downloaded onto my device, the sound library and java, and an mp3 to input into the project. 

## Project Status
Project is _complete_ 


## Room for Improvement
Include areas you believe need improvement / could be improved. Also add TODOs for future development.

Room for improvement:
- Improvement to be done 1
- Improvement to be done 2

To do:
- Feature to be added 1
- Feature to be added 2


## Acknowledgements
This project was inspired from Noah Hradek on [ Medium ](https://medium.com/@noahhradek/making-a-frequency-visualizer-in-processing-e3750c699a7b). I also used a few other resources to help me to import my SoundFile and implement my stretch goals. I used Processing's online resources, as well as resources from YouTube. To import my SoundFile, I used a tutorial from [John McCaffrey](https://www.youtube.com/watch?v=I6fG1wneXWo), which was particularly helpful. I also used the feedback from my peers and tutor during tutorials to troubleshoot issues and advance my project, and thank them for their input.  


<!-- Optional -->
<!-- ## License -->
<!-- This project is open source and available under the [... License](). -->

<!-- You don't have to include all sections - just the one's relevant to your project -->
