for subject in pilot2 301 302 305 306 307 308 309 310 311 312 313
do
echo ${subject}
cd ~/TRANS_DC/aug2015_analysis/s${subject}-TASKcomp_nf_gsr.results
3dcalc -a errts.${subject}.nii[0..346] -expr a -prefix errts.${subject}.R01.nii
3dcalc -a errts.${subject}.nii[347..697] -expr a -prefix errts.${subject}.R02.nii
3dcalc -a errts.${subject}.nii[698..1042] -expr a -prefix errts.${subject}.R03.nii
3dcalc -a errts.${subject}.nii[1043..1365] -expr a -prefix errts.${subject}.R04.nii
3dcalc -a errts.${subject}.nii[1366..1701] -expr a -prefix errts.${subject}.R05.nii
3dcalc -a errts.${subject}.nii[1702..1987] -expr a -prefix errts.${subject}.R06.nii
3dcalc -a errts.${subject}.nii[1988..2314] -expr a -prefix errts.${subject}.R07.nii
3dcalc -a errts.${subject}.nii[2315..2617] -expr a -prefix errts.${subject}.R08.nii
3dcalc -a errts.${subject}.nii[2618..2975] -expr a -prefix errts.${subject}.R09.nii
3dcalc -a errts.${subject}.nii[2976..3311] -expr a -prefix errts.${subject}.R10.nii
cd ~/TRANS_DC/aug2015_analysis/s${subject}-TASKcomp_nf.results
3dcalc -a errts.${subject}.nii[0..346] -expr a -prefix errts.${subject}.R01.nii
3dcalc -a errts.${subject}.nii[347..697] -expr a -prefix errts.${subject}.R02.nii
3dcalc -a errts.${subject}.nii[698..1042] -expr a -prefix errts.${subject}.R03.nii
3dcalc -a errts.${subject}.nii[1043..1365] -expr a -prefix errts.${subject}.R04.nii
3dcalc -a errts.${subject}.nii[1366..1701] -expr a -prefix errts.${subject}.R05.nii
3dcalc -a errts.${subject}.nii[1702..1987] -expr a -prefix errts.${subject}.R06.nii
3dcalc -a errts.${subject}.nii[1988..2314] -expr a -prefix errts.${subject}.R07.nii
3dcalc -a errts.${subject}.nii[2315..2617] -expr a -prefix errts.${subject}.R08.nii
3dcalc -a errts.${subject}.nii[2618..2975] -expr a -prefix errts.${subject}.R09.nii
3dcalc -a errts.${subject}.nii[2976..3311] -expr a -prefix errts.${subject}.R10.nii
done

for subject in pilot1
do
echo ${subject}
cd ~/TRANS_DC/aug2015_analysis/s${subject}-TASKcomp_nf_gsr.results
3dcalc -a errts.${subject}.nii[0..346] -expr a -prefix errts.${subject}.R01.nii
3dcalc -a errts.${subject}.nii[347..697] -expr a -prefix errts.${subject}.R02.nii
3dcalc -a errts.${subject}.nii[698..1041] -expr a -prefix errts.${subject}.R03.nii
3dcalc -a errts.${subject}.nii[1042..1364] -expr a -prefix errts.${subject}.R04.nii
3dcalc -a errts.${subject}.nii[1365..1700] -expr a -prefix errts.${subject}.R05.nii
3dcalc -a errts.${subject}.nii[1701..1986] -expr a -prefix errts.${subject}.R06.nii
3dcalc -a errts.${subject}.nii[1987..2313] -expr a -prefix errts.${subject}.R07.nii
3dcalc -a errts.${subject}.nii[2314..2616] -expr a -prefix errts.${subject}.R08.nii
3dcalc -a errts.${subject}.nii[2617..2973] -expr a -prefix errts.${subject}.R09.nii
3dcalc -a errts.${subject}.nii[2974..3309] -expr a -prefix errts.${subject}.R10.nii
cd ~/TRANS_DC/aug2015_analysis/s${subject}-TASKcomp_nf.results
3dcalc -a errts.${subject}.nii[0..346] -expr a -prefix errts.${subject}.R01.nii
3dcalc -a errts.${subject}.nii[347..697] -expr a -prefix errts.${subject}.R02.nii
3dcalc -a errts.${subject}.nii[698..1041] -expr a -prefix errts.${subject}.R03.nii
3dcalc -a errts.${subject}.nii[1042..1364] -expr a -prefix errts.${subject}.R04.nii
3dcalc -a errts.${subject}.nii[1365..1700] -expr a -prefix errts.${subject}.R05.nii
3dcalc -a errts.${subject}.nii[1701..1986] -expr a -prefix errts.${subject}.R06.nii
3dcalc -a errts.${subject}.nii[1987..2313] -expr a -prefix errts.${subject}.R07.nii
3dcalc -a errts.${subject}.nii[2314..2616] -expr a -prefix errts.${subject}.R08.nii
3dcalc -a errts.${subject}.nii[2617..2973] -expr a -prefix errts.${subject}.R09.nii
3dcalc -a errts.${subject}.nii[2974..3309] -expr a -prefix errts.${subject}.R10.nii
done

for subject in pilot1 pilot2 301 302 305 306 308 309 310 311 312 313
do
echo ${subject}
cd ~/TRANS_DC/aug2015_analysis/s${subject}-TASKcomp_nf.results
gunzip errts.${subject}.R01.nii.gz
gunzip errts.${subject}.R02.nii.gz
gunzip errts.${subject}.R03.nii.gz
gunzip errts.${subject}.R04.nii.gz
gunzip errts.${subject}.R05.nii.gz
gunzip errts.${subject}.R06.nii.gz
gunzip errts.${subject}.R07.nii.gz
gunzip errts.${subject}.R08.nii.gz
gunzip errts.${subject}.R09.nii.gz
gunzip errts.${subject}.R10.nii.gz
cd ~/TRANS_DC/aug2015_analysis/s${subject}-TASKcomp_nf_gsr.results
gunzip errts.${subject}.R01.nii.gz
gunzip errts.${subject}.R02.nii.gz
gunzip errts.${subject}.R03.nii.gz
gunzip errts.${subject}.R04.nii.gz
gunzip errts.${subject}.R05.nii.gz
gunzip errts.${subject}.R06.nii.gz
gunzip errts.${subject}.R07.nii.gz
gunzip errts.${subject}.R08.nii.gz
gunzip errts.${subject}.R09.nii.gz
gunzip errts.${subject}.R10.nii.gz
done








for subject in pilot1 pilot2 301 302 305 306 308 309 310 311 312 313
do
echo ${subject}
cd ~/TRANS_DC/aug2015_analysis/s${subject}-TASKcomp_nf_gsr.results
gunzip errts.${subject}.R04.nii.gz
done






