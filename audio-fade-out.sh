#!/bin/bash

# select first 60 seconds of input file and fade out last 6 seconds.

fade_duration=6
input='fileName.mp3'
output='fileName.prv.fadeout.m4a'

ffmpeg -t 60 -i $input -af "afade=t=out:st=54:d=$fade_duration" -ab 96k $output
