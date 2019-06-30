#!/bin/bash

VERY_DIFF="cho_bp_props
dft_mo3co
h2o-camb3lyp-pol-cdfit
lys_qmmm
neb-fch3cl
neb-isobutene
qmmm_grad0
spin_ecps_o_hess"

for i in ${VERY_DIFF}
do

    diff ${i}.ok.out.nwparse ${i}.out.nwparse >& ${i}.diff
done

