subject=$1
cd ~/TRANS_DC/aug2015_analysis


tcsh -xef proc.s${subject}-TASKcomp_nf_gsr.tcsh 2>&1 | tee output.proc.s${subject}-TASKcomp_nf_gsr.tcsh
