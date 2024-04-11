#!/usr/bin/env bash

analysisdirectory=~/TRANS_DC/aug2015_analysis
scripts_dir=~/TRANS_DC/aug2015_analysis/scripts

for subject in pilot1 pilot2 301 302 305 306 307 308 309 310 311 312 313

do
mkdir -p ${analysisdirectory}/log
qsub \
-e ${analysisdirectory}/log/TASKcomp.nf.${subject}.output.log \
-o ${analysisdirectory}/log/TASKcomp.nf.${subject}.output.log \
-N taskNF_${subject} \
-S /bin/sh \
${scripts_dir}/TASK_tshell_nf_gsr.sh ${subject}

done
