#!/bin/bash
#SF2=/home/favre/saved/devel/midi/sf2/OmegaGMGS2.sf2
#SF2=/usr/share/soundfonts/FluidR3_GM.sf2
SF2=data/Zelda_3.sf2

for i in data/midi/*.mid; do 
    fluidsynth -F $i.wav $SF2 $i
    oggenc $i.wav -o $i.ogg
    rm $i.wav
done
