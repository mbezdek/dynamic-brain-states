#!/usr/bin/env bash

analysisdirectory=/home/mbezdek/TRANS_DC/aug2015_analysis/
scripts_dir=/home/mbezdek/TRANS_DC/aug2015_analysis/suspense_glm

for subject in spilot2 s301 s302 s305 s306 s307 s308 s309 s310 s311 s312 s313
do
mkdir -p ${analysisdirectory}/log
qsub \
-e ${analysisdirectory}/log/GLMsus.${subject}.log \
-o ${analysisdirectory}/log/GLMsus.${subject}.log \
-N GLM_${subject} \
-S /bin/sh \
${scripts_dir}/GLM.sh ${subject}

done
