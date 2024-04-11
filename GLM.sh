subj=$1
echo ****************PROCESSING PARTICIPANT ${subject}***********************
cd /home/mbezdek/TRANS_DC/aug2015_analysis/${subj}-TASKcomp.results/
3dDeconvolve -input pb03.${subj}-TASKcomp.r*.blur+tlrc.HEAD                              \
    -censor motion_${subj}-TASKcomp_censor.1D                                          \
    -local_times                                                     \
    -CENSORTR 1:0..28 1:318..346 2:0..28 2:322..350 3:0..28 3:316..344 4:0..28 4:294..322 5:0..28 5:307..335 6:0..28 6:257..285 7:0..28 7:298..326 8:0..28 8:274..302 9:0..28 9:329..357 10:0..28 10:307..335	\
    -polort A                                                                 \
    -num_stimts 18                                                            \
    -stim_file 1 /home/mbezdek/TRANS_DC/aug2015_analysis/suspense_glm/stim/TRANSDC_sus.1D -stim_label 1 sus_slope     \
    -stim_file 2 /home/mbezdek/TRANS_DC/aug2015_analysis/suspense_glm/stim/TRANSDC_hue.1D -stim_base 2 -stim_label 2 hue     \
    -stim_file 3 /home/mbezdek/TRANS_DC/aug2015_analysis/suspense_glm/stim/TRANSDC_sat.1D -stim_base 3 -stim_label 3 sat     \
    -stim_file 4 /home/mbezdek/TRANS_DC/aug2015_analysis/suspense_glm/stim/TRANSDC_lum.1D -stim_base 4 -stim_label 4 lum     \
    -stim_file 5 /home/mbezdek/TRANS_DC/aug2015_analysis/suspense_glm/stim/TRANSDC_edge.1D -stim_base 5 -stim_label 5 edge     \
    -stim_file 6 /home/mbezdek/TRANS_DC/aug2015_analysis/suspense_glm/stim/TRANSDC_flow.1D -stim_base 6 -stim_label 6 flow     \
    -stim_file 7 motion_demean.1D'[0]' -stim_base 7 -stim_label 7 roll_01     \
    -stim_file 8 motion_demean.1D'[1]' -stim_base 8 -stim_label 8 pitch_01    \
    -stim_file 9 motion_demean.1D'[2]' -stim_base 9 -stim_label 9 yaw_01      \
    -stim_file 10 motion_demean.1D'[3]' -stim_base 10 -stim_label 10 dS_01       \
    -stim_file 11 motion_demean.1D'[4]' -stim_base 11 -stim_label 11 dL_01       \
    -stim_file 12 motion_demean.1D'[5]' -stim_base 12 -stim_label 12 dP_01       \
    -stim_file 13 motion_deriv.1D'[0]' -stim_base 13 -stim_label 13 roll_02      \
    -stim_file 14 motion_deriv.1D'[1]' -stim_base 14 -stim_label 14 pitch_02     \
    -stim_file 15 motion_deriv.1D'[2]' -stim_base 15 -stim_label 15 yaw_02       \
    -stim_file 16 motion_deriv.1D'[3]' -stim_base 16 -stim_label 16 dS_02     \
    -stim_file 17 motion_deriv.1D'[4]' -stim_base 17 -stim_label 17 dL_02     \
    -stim_file 18 motion_deriv.1D'[5]' -stim_base 18 -stim_label 18 dP_02     \
    -bout -fout -tout -x1D Xsus.xmat.1D -xjpeg Xsus.jpg                                   \
    -x1D_uncensored Xsus.nocensor.xmat.1D                                        \
    -fitts fitts.sus.${subj}                                                        \
    -errts errts.sus.${subj}                                                      \
    -bucket stats.sus.${subj}
