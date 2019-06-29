#!/bin/bash

FAILED_TST="dft_s12gh
esp
esp_uhf
bsse_dft_trimer
cosmo_h2cco2
cosmo_h3co
cosmo_h3co_ecp
cosmo_h2cco2na
cosmo_h3co_gp
dft_mo3co
dft_x
dielsalder 
dft_ozone
sadsmall
pspw
pspw_SiC
pspw_stress
tddft_h2o_uhf_mxvc20
tce_cr_eom_t_ch_rohf
tce_cr_eom_t_ozone
tce_hyperpolar_ccsd_small
tce_eomsd_eomsol1
tce_eomsd_eomsol2
oniom2
oniom4
c60_ecp
h2o_vscf
o2_zora_so
qmmm_grad0
lys_qmmm
ethane_qmmm
qmmm_opt0
prop_uhf_ch3f
ch3f_trans_cam_nmr
ch3f-lc-wpbe
ch3f-lc-wpbeh
ch3f_zora_shielding
ch3radical_rot
ch3radical_unrot
cho_bp_props
prop_cg_nh3_b3lyp
acr_lcblyp
h2o-camb3lyp-pol-cdfit
Ne_scs-mp2_cc-vqz
He_scs-mp2_cc-vqz
Ar_scs-mp2_cc-vqz
h2o-response
mep-test
k6h2o
mcscf_ch2
mcscf_ozone
h2o_raman_3
h2o_raman_4
tropt-ch3nh2
h3_dirdyvtst
h2o_hcons
etf_hcons
hess_ch4
talc
neb-fch3cl
neb-isobutene"

echo ${FAILED_TST}

for i in ${FAILED_TST}
do
    diff ${i}.out.nwparse ${i}.ok.out.nwparse >& ${i}.diff
    mv ${i}.out.nwparse  ${i}.ok.out.nwparse ${HOME}/repository/nwchem/QA-test/failed-tests
    mv ${i}.diff ${HOME}/repository/nwchem/QA-test/failed-tests
done


