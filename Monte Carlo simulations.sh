##Step1: Estimating smoothing: ex) I applied for smoothing=6mm. Then, I
##normally get 8~9mm of smoothing based on this procedure

3dFWHMx -detrend -mask /home/mbezdek/TRANS_DC/aug2015_analysis/s310-TASKcomp.results/full_mask.s310-TASKcomp+tlrc.BRIK.gz /home/mbezdek/TRANS_DC/aug2015_analysis/s310-TASKcomp.results/pb03.s310-TASKcomp.r01.blur+tlrc.HEAD

++ detrending done
 7.21633  7.12452  7.39958


average = 7.24681

##Step2: Marte Carlo simulations to obtain corrected p value

3dMean -verbose -prefix 'group_brain_mask' '../spilot1/func/fMRI_A01_sm2std_mask.nii.gz' '../spilot2/func/fMRI_A01_sm2std_mask.nii.gz' '../s101/func/fMRI_A01_sm2std_mask.nii.gz' '../s102/func/fMRI_A01_sm2std_mask.nii.gz' '../s103/func/fMRI_A01_sm2std_mask.nii.gz' '../s104/func/fMRI_A01_sm2std_mask.nii.gz' '../s105/func/fMRI_A01_sm2std_mask.nii.gz' '../s106/func/fMRI_A01_sm2std_mask.nii.gz' '../s108/func/fMRI_A01_sm2std_mask.nii.gz' '../s109/func/fMRI_A01_sm2std_mask.nii.gz' '../s110/func/fMRI_A01_sm2std_mask.nii.gz' '../s111/func/fMRI_A01_sm2std_mask.nii.gz' '../s112/func/fMRI_A01_sm2std_mask.nii.gz' '../s113/func/fMRI_A01_sm2std_mask.nii.gz' '../s114/func/fMRI_A01_sm2std_mask.nii.gz' '../s115/func/fMRI_A01_sm2std_mask.nii.gz' '../s116/func/fMRI_A01_sm2std_mask.nii.gz' '../s117/func/fMRI_A01_sm2std_mask.nii.gz' '../s118/func/fMRI_A01_sm2std_mask.nii.gz' '../s119/func/fMRI_A01_sm2std_mask.nii.gz' '../s120/func/fMRI_A01_sm2std_mask.nii.gz' '../s121/func/fMRI_A01_sm2std_mask.nii.gz'

3dcalc -a 'group_brain_mask+tlrc' -expr 'ispositive(a-.999)' \
            -prefix group_brain_mask_cons     

3dClustSim -mask '/home/mbezdek/TRANS_DC/aug2015_analysis/suspense_glm/DC_mask_80+tlrc.HEAD' -fwhm 7.24681 -niml -prefix sus

##: "${FWHM}" should be replaced by the average of outputs from 3dFWHMx

##Step3: Updating *.HEAD to automatically reflect corrected p-value

+ Append the name of the datasets to be patched to this command:
 3drefit -atrstring AFNI_CLUSTSIM_NN1_1sided file:sus.NN1_1sided.niml -atrstring AFNI_CLUSTSIM_MASK file:sus.mask -atrstring AFNI_CLUSTSIM_NN2_1sided file:sus.NN2_1sided.niml -atrstring AFNI_CLUSTSIM_NN3_1sided file:sus.NN3_1sided.niml -atrstring AFNI_CLUSTSIM_NN1_2sided file:sus.NN1_2sided.niml -atrstring AFNI_CLUSTSIM_NN2_2sided file:sus.NN2_2sided.niml -atrstring AFNI_CLUSTSIM_NN3_2sided file:sus.NN3_2sided.niml -atrstring AFNI_CLUSTSIM_NN1_bisided file:sus.NN1_bisided.niml -atrstring AFNI_CLUSTSIM_NN2_bisided file:sus.NN2_bisided.niml -atrstring AFNI_CLUSTSIM_NN3_bisided file:sus.NN3_bisided.niml /home/mbezdek/TRANS_DC/aug2015_analysis/suspense_glm/ttest_DC_sus+tlrc.HEAD


##:Now, ${stat_files} should have a corrected p-value (alpha) depending
##on your initial threshold automatically. You will also see the minimum
##cluster size corresponding to the corrected p < 0.05

ttest_c-i+tlrc.HEAD
ttest_c-neut+tlrc.HEAD
ttest_i-neut+tlrc.HEAD
ttest_mus-neut+tlrc.HEAD
ttest_sus_slope+tlrc.HEAD
## ttest_NEUT_c-i+tlrc.HEAD
## ttest_NEUT_c-neut+tlrc.HEAD
## ttest_NEUT_i-neut+tlrc.HEAD
## ttest_NEUT_mus-neut+tlrc.HEAD
## ttest_np_c-i+tlrc.HEAD
## ttest_np_c-neut+tlrc.HEAD
## ttest_np_i-neut+tlrc.HEAD
## ttest_np_mus-neut+tlrc.HEAD
## ttest_suspense_np+tlrc.HEAD

3drefit -atrstring AFNI_CLUSTSIM_NN1 file:N22_TRANS2.NN1.niml -atrstring AFNI_CLUSTSIM_MASK file:N22_TRANS2.mask -atrstring AFNI_CLUSTSIM_NN2 file:N22_TRANS2.NN2.niml -atrstring AFNI_CLUSTSIM_NN3 file:N22_TRANS2.NN3.niml ttest_mem_ll+tlrc.HEAD

###############################


3dClustSim -mask 'TRANS2_mask_80+tlrc' -fwhm 8.76713 -niml -prefix TRANS2_FWE



3drefit -atrstring AFNI_CLUSTSIM_NN1 file:TRANS2_FWE.NN1.niml -atrstring AFNI_CLUSTSIM_MASK file:TRANS2_FWE.mask -atrstring AFNI_CLUSTSIM_NN2 file:TRANS2_FWE.NN2.niml -atrstring AFNI_CLUSTSIM_NN3 file:TRANS2_FWE.NN3.niml /home/mbezdek/TRANS2/group/ttest_mus-n_ll+tlrc.HEAD /home/mbezdek/TRANS2/group/ttest_i-n_ll+tlrc.HEAD /home/mbezdek/TRANS2/group/ttest_c-n_ll+tlrc.HEAD /home/mbezdek/TRANS2/group/ttest_c-i_ll+tlrc.HEAD



