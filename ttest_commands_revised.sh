3dttest++ -prefix ttest_DC_sus -mask /home/mbezdek/TRANS_DC/aug2015_analysis/suspense_glm/DC_mask+tlrc -setA '/home/mbezdek/TRANS_DC/aug2015_analysis/spilot1-TASKcomp.results/stats.sus.spilot1+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/spilot2-TASKcomp.results/stats.sus.spilot2+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s301-TASKcomp.results/stats.sus.s301+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s302-TASKcomp.results/stats.sus.s302+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s305-TASKcomp.results/stats.sus.s305+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s306-TASKcomp.results/stats.sus.s306+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s307-TASKcomp.results/stats.sus.s307+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s308-TASKcomp.results/stats.sus.s308+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s309-TASKcomp.results/stats.sus.s309+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s310-TASKcomp.results/stats.sus.s310+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s311-TASKcomp.results/stats.sus.s311+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s312-TASKcomp.results/stats.sus.s312+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s313-TASKcomp.results/stats.sus.s313+tlrc.HEAD[61]'

3drefit -atrstring AFNI_CLUSTSIM_NN1_1sided file:sus.NN1_1sided.niml -atrstring AFNI_CLUSTSIM_MASK file:sus.mask -atrstring AFNI_CLUSTSIM_NN2_1sided file:sus.NN2_1sided.niml -atrstring AFNI_CLUSTSIM_NN3_1sided file:sus.NN3_1sided.niml -atrstring AFNI_CLUSTSIM_NN1_2sided file:sus.NN1_2sided.niml -atrstring AFNI_CLUSTSIM_NN2_2sided file:sus.NN2_2sided.niml -atrstring AFNI_CLUSTSIM_NN3_2sided file:sus.NN3_2sided.niml -atrstring AFNI_CLUSTSIM_NN1_bisided file:sus.NN1_bisided.niml -atrstring AFNI_CLUSTSIM_NN2_bisided file:sus.NN2_bisided.niml -atrstring AFNI_CLUSTSIM_NN3_bisided file:sus.NN3_bisided.niml /home/mbezdek/TRANS_DC/aug2015_analysis/suspense_glm/ttest_DC_sus+tlrc.HEAD

3dclust -1Dformat -nosum -1dindex 1 -1tindex 1 -2thresh -3.415 3.415 -inmask -dxyz=1 -savemask suspense_Clust_mask 1.01 29 /home/mbezdek/TRANS_DC/aug2015_analysis/suspense_glm/ttest_DC_sus+tlrc.HEAD
[mbezdek@www.cabiatl.com: Fri Feb 12 14:20:49 2021] ===================================
[mbezdek@www.cabiatl.com: Fri Feb 12 14:20:49 2021] 3dcalc -a 'ttest_DC_sus+tlrc[1]' -b suspense_Clust_mask+tlrc -expr 'a * astep(b,0)' -prefix suspense_GLM_caret

##MODIFIED:
3dttest++ -prefix ttest_DC_sus -mask /home/mbezdek/TRANS_DC/aug2015_analysis/suspense_glm/DC_mask+tlrc -setA '/home/mbezdek/TRANS_DC/aug2015_analysis/spilot1-TASKcomp.results/stats.sus.spilot1+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/spilot2-TASKcomp.results/stats.sus.spilot2+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s301-TASKcomp.results/stats.sus.s301+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s302-TASKcomp.results/stats.sus.s302+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s305-TASKcomp.results/stats.sus.s305+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s306-TASKcomp.results/stats.sus.s306+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s308-TASKcomp.results/stats.sus.s308+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s309-TASKcomp.results/stats.sus.s309+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s310-TASKcomp.results/stats.sus.s310+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s311-TASKcomp.results/stats.sus.s311+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s312-TASKcomp.results/stats.sus.s312+tlrc.HEAD[61]' '/home/mbezdek/TRANS_DC/aug2015_analysis/s313-TASKcomp.results/stats.sus.s313+tlrc.HEAD[61]'

3dcalc -a 'ttest_DC_sus+tlrc[1]' -b suspense_Clust_mask+tlrc -expr 'a * astep(b,0)' -prefix suspense_GLM_caret