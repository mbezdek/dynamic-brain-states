for ROI in A1 A2 A3 AS1 AS2 AS3 AS4 AS5 AS6 AS7 AS A BG1 BG2 BG3 BG4 BG5 BG DDMN1 DDMN2 DDMN3 DDMN4 DDMN5 DDMN6 DDMN7 DDMN8 DDMN9 DDMN HV1 HV2 HV L1 L2 L3 L4 L5 L6 L7 LECN1 LECN2 LECN3 LECN4 LECN5 LECN6 LECN L P1 P2 P3 P4 PS1 PS2 PS3 PS4 PS5 PS6 PS7 PS8 PS9 PS10 PS11 PS12 PS P PV1 PV2 PV RECN1 RECN2 RECN3 RECN4 RECN5 RECN6 RECN S1 S2 S3 S4 S5 S6 S VDMN1 VDMN2 VDMN3 VDMN4 VDMN5 VDMN6 VDMN7 VDMN8 VDMN9 VDMN10 VDMN VS1 VS2 VS3 VS4 VS5 VS6 VS7 VS8 VS9 VS10 VS11 VS
do
3dcalc -a ../${ROI}+tlrc -b /home/mbezdek/TRANS_DC/aug2015_analysis/scripts/TRANS_DC_group_mask_80+tlrc.HEAD -expr 'step(a)*step(b)' -prefix ${ROI}m 

done
###############################################

for subject in pilot1 pilot2 301 302 305 306 308 309 310 311 312 313
do
for runs in 01 02 03 04 05 06 07 08 09 10
do
for ROI in A1 A2 A3 AS1 AS2 AS3 AS4 AS5 AS6 AS7 AS A BG1 BG2 BG3 BG4 BG5 BG DDMN1 DDMN2 DDMN3 DDMN4 DDMN5 DDMN6 DDMN7 DDMN8 DDMN9 DDMN HV1 HV2 HV L1 L2 L3 L4 L5 L6 L7 LECN1 LECN2 LECN3 LECN4 LECN5 LECN6 LECN L P1 P2 P3 P4 PS1 PS2 PS3 PS4 PS5 PS6 PS7 PS8 PS9 PS10 PS11 PS12 PS P PV1 PV2 PV RECN1 RECN2 RECN3 RECN4 RECN5 RECN6 RECN S1 S2 S3 S4 S5 S6 S VDMN1 VDMN2 VDMN3 VDMN4 VDMN5 VDMN6 VDMN7 VDMN8 VDMN9 VDMN10 VDMN VS1 VS2 VS3 VS4 VS5 VS6 VS7 VS8 VS9 VS10 VS11 VS
do
3dmaskave -quiet \
-mask /home/mbezdek/TRANS_DC/aug2015_analysis/cluster_find/resampled/masked/${ROI}m+tlrc.HEAD \
/home/mbezdek/TRANS_DC/aug2015_analysis/TASKcomp_no_censor_first_preprocessed/errts.${subject}.R${runs}.nii \
> ${subject}.R${runs}.${ROI}.1D

done
done
done

#############################################################
#ROIs with 0 voxels:
AS6 AS7 BG5 L2 L7 LECN2(s306) LECN4(s306) LECN5 PS5(s309 s310) PS8 PS11 PV2(s306) RECN5 VDMN3(s306) VDMN8(s301 s306 s310) VDMN10 VS9 VS10 VS11
#individual
A1 A2 A3 AS1 AS2 AS3 AS4 AS5 BG1 BG2 BG3 BG4 DDMN1 DDMN2 DDMN3 DDMN4 DDMN5 DDMN6 DDMN7 DDMN8 DDMN9 HV1 HV2 L1 L3 L4 L5 L6 LECN1 LECN3 LECN6 P1 P2 P3 P4 PS1 PS2 PS3 PS4 PS6 PS7 PS9 PS10 PS12 PV1 RECN1 RECN2 RECN3 RECN4 RECN6 S1 S2 S3 S4 S5 S6 VDMN1 VDMN2 VDMN4 VDMN5 VDMN6 VDMN7 VDMN9 VS1 VS2 VS3 VS4 VS5 VS6 VS7 VS8
#networks
AS A BG DDMN HV LECN L PS P PV RECN S VDMN VS


#############################################################

for subject in pilot1 pilot2 301 302 305 306 308 309 310 311 312 313
do
for runs in 01 02 03 04 05 06 07 08 09 10
do
1dcat ${subject}.R${runs}.A1.1D ${subject}.R${runs}.A2.1D ${subject}.R${runs}.A3.1D ${subject}.R${runs}.AS1.1D ${subject}.R${runs}.AS2.1D ${subject}.R${runs}.AS3.1D ${subject}.R${runs}.AS4.1D ${subject}.R${runs}.AS5.1D ${subject}.R${runs}.BG1.1D ${subject}.R${runs}.BG2.1D ${subject}.R${runs}.BG3.1D ${subject}.R${runs}.BG4.1D ${subject}.R${runs}.DDMN1.1D ${subject}.R${runs}.DDMN2.1D ${subject}.R${runs}.DDMN3.1D ${subject}.R${runs}.DDMN4.1D ${subject}.R${runs}.DDMN5.1D ${subject}.R${runs}.DDMN6.1D ${subject}.R${runs}.DDMN7.1D ${subject}.R${runs}.DDMN8.1D ${subject}.R${runs}.DDMN9.1D ${subject}.R${runs}.HV1.1D ${subject}.R${runs}.HV2.1D ${subject}.R${runs}.L1.1D ${subject}.R${runs}.L3.1D ${subject}.R${runs}.L4.1D ${subject}.R${runs}.L5.1D ${subject}.R${runs}.L6.1D ${subject}.R${runs}.LECN1.1D ${subject}.R${runs}.LECN3.1D ${subject}.R${runs}.LECN6.1D ${subject}.R${runs}.P1.1D ${subject}.R${runs}.P2.1D ${subject}.R${runs}.P3.1D ${subject}.R${runs}.P4.1D ${subject}.R${runs}.PS1.1D ${subject}.R${runs}.PS2.1D ${subject}.R${runs}.PS3.1D ${subject}.R${runs}.PS4.1D ${subject}.R${runs}.PS6.1D ${subject}.R${runs}.PS7.1D ${subject}.R${runs}.PS9.1D ${subject}.R${runs}.PS10.1D ${subject}.R${runs}.PS12.1D ${subject}.R${runs}.PV1.1D ${subject}.R${runs}.RECN1.1D ${subject}.R${runs}.RECN2.1D ${subject}.R${runs}.RECN3.1D ${subject}.R${runs}.RECN4.1D ${subject}.R${runs}.RECN6.1D ${subject}.R${runs}.S1.1D ${subject}.R${runs}.S2.1D ${subject}.R${runs}.S3.1D ${subject}.R${runs}.S4.1D ${subject}.R${runs}.S5.1D ${subject}.R${runs}.S6.1D ${subject}.R${runs}.VDMN1.1D ${subject}.R${runs}.VDMN2.1D ${subject}.R${runs}.VDMN4.1D ${subject}.R${runs}.VDMN5.1D ${subject}.R${runs}.VDMN6.1D ${subject}.R${runs}.VDMN7.1D ${subject}.R${runs}.VDMN9.1D ${subject}.R${runs}.VS1.1D ${subject}.R${runs}.VS2.1D ${subject}.R${runs}.VS3.1D ${subject}.R${runs}.VS4.1D ${subject}.R${runs}.VS5.1D ${subject}.R${runs}.VS6.1D ${subject}.R${runs}.VS7.1D ${subject}.R${runs}.VS8.1D > ${subject}.R${runs}.all.1D

1dcat ${subject}.R${runs}.AS.1D ${subject}.R${runs}.A.1D ${subject}.R${runs}.BG.1D ${subject}.R${runs}.DDMN.1D ${subject}.R${runs}.HV.1D ${subject}.R${runs}.LECN.1D ${subject}.R${runs}.L.1D ${subject}.R${runs}.PS.1D ${subject}.R${runs}.P.1D ${subject}.R${runs}.PV.1D ${subject}.R${runs}.RECN.1D ${subject}.R${runs}.S.1D ${subject}.R${runs}.VDMN.1D ${subject}.R${runs}.VS.1D > ${subject}.R${runs}.networks.1D

done
done
###################################
for subject in pilot1 pilot2 301 302 305 306 308 309 310 311 312 313
do
1dcat -stack ${subject}.R01.all.1D ${subject}.R02.all.1D ${subject}.R03.all.1D ${subject}.R04.all.1D ${subject}.R05.all.1D ${subject}.R06.all.1D ${subject}.R07.all.1D ${subject}.R08.all.1D ${subject}.R09.all.1D ${subject}.R10.all.1D > ${subject}.allruns.1D
1dcat -stack ${subject}.R01.networks.1D ${subject}.R02.networks.1D ${subject}.R03.networks.1D ${subject}.R04.networks.1D ${subject}.R05.networks.1D ${subject}.R06.networks.1D ${subject}.R07.networks.1D ${subject}.R08.networks.1D ${subject}.R09.networks.1D ${subject}.R10.networks.1D > ${subject}.networkruns.1D
done
##################################
1dcat -stack pilot1.allruns.1D pilot2.allruns.1D 301.allruns.1D 302.allruns.1D 305.allruns.1D 306.allruns.1D 308.allruns.1D 309.allruns.1D 310.allruns.1D 311.allruns.1D 312.allruns.1D 313.allruns.1D > allruns.allsubs.1D
1dcat -stack pilot1.networkruns.1D pilot2.networkruns.1D 301.networkruns.1D 302.networkruns.1D 305.networkruns.1D 306.networkruns.1D 308.networkruns.1D 309.networkruns.1D 310.networkruns.1D 311.networkruns.1D 312.networkruns.1D 313.networkruns.1D > networkruns.allsubs.1D
##################################
load('allruns.allsubs.1D','-ascii');
alllinks = linkage(Xallruns_allsubs,'ward','euclidean');
allclust7 = cluster(alllinks,'maxclust',7);



