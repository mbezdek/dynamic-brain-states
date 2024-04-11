#!/usr/bin/env bash

analysisdirectory=~/TRANS_DC/aug2015_analysis
scripts_dir=~/TRANS_DC/aug2015_analysis/scripts


for subject in pilot1 pilot2 301 302 305 306 307 308 309 310 311 312 313

do
mkdir -p ${analysisdirectory}/log

${scripts_dir}/TASK_afni_proc_no_filter_gsr.sh ${subject}

done
