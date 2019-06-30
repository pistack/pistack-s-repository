#!/bin/bash

ERROR_TST="k6h2o mcscf_ch2 mcscf_ozone oniom4 pspw pspw_polarizability pspw_SiC
pspw_stress tddft_h2o_uhf_mxvc20 tropt-ch3nh2"

#mkdir err-tst

for i in ${ERROR_TST}
do
    mv ${i}.out ${i}.ok.out ${i}.out.nwparse ${i}.ok.out.nwparse err-tst
done
