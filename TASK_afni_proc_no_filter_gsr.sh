subject=$1


runname=TASKcomp_nf_gsr
echo $subject
cd ~/TRANS_DC/aug2015_analysis


afni_proc.py                                               \
-subj_id s${subject}-${runname}                                       \
-script proc.s${subject}-${runname}.tcsh               \
-dsets s${subject}/func/orig/A??.nii                       \
-copy_anat s${subject}/anat/orig/t1_MPRAGE.nii             \
-blocks despike align tlrc volreg mask blur regress        \
-volreg_align_to third                                     \
-volreg_align_e2a                                          \
-volreg_tlrc_warp                                          \
-tlrc_base MNI_avg152T1+tlrc                               \
-mask_segment_anat yes                                     \
-mask_segment_erode yes                                    \
-blur_size 6.0                                             \
-regress_ROI brain                                         \
-regress_censor_motion 0.2                                 \
-regress_apply_mot_types demean deriv                      \
-regress_run_clustsim no                                   \
-regress_est_blur_errts

