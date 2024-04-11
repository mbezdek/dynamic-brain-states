#!/usr/bin/env bash

for subject in pilot1 pilot2 301 302 305 306 307 308 309 310 311 312 313

do
echo ${subject}
cd ~/TRANS_DC/aug2015_analysis/s${subject}-TASKcomp_nf.results
3dAFNItoNIFTI -prefix errts.${subject} errts.s${subject}-TASKcomp_nf.tproject+tlrc
gunzip errts.${subject}.nii.gz
cd ~/TRANS_DC/aug2015_analysis/s${subject}-TASKcomp_nf_gsr.results
3dAFNItoNIFTI -prefix errts.${subject} errts.s${subject}-TASKcomp_nf_gsr.tproject+tlrc
gunzip errts.${subject}.nii.gz

done

