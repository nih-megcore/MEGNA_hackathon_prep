#!/bin/bash
task=$1   

cd $task
in_subjdir=/data/EnigmaMeg/BIDS/NIH_hvmeg/derivatives/freesurfer/subjects
out_subjdir=./derivatives/freesurfer/subjects
mkdir -p $out_subjdir


#Download all the task and T1w data for the following subjects
for i in 22671 70467 62003 72082 85305 52662 89475 42107 61373 89474 03748 84896 02811; do cp -R ${in_subjdir}/sub-ON${i} ${out_subjdir}/sub-ON${i}; done
