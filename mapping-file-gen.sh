#!/bin/bash

# OCN -> ATM
#ncremap -5 --alg_typ=traave           --grd_src="${OCN_GRID}" --grd_dst="${ATM_GRID}" --map_fl="${MAPS_ROOT}/map_${OCN_GRID_NAME}_to_${ATM_GRID_NAME}_traave.${DATE}.nc"     --drc_tmp="${TMP_ROOT}"
#ncremap -5 --alg_typ=trbilin          --grd_src="${OCN_GRID}" --grd_dst="${ATM_GRID}" --map_fl="${MAPS_ROOT}/map_${OCN_GRID_NAME}_to_${ATM_GRID_NAME}_trbilin.${DATE}.nc"    --drc_tmp="${TMP_ROOT}"
#ncremap -5 --alg_typ=trfv2            --grd_src="${OCN_GRID}" --grd_dst="${ATM_GRID}" --map_fl="${MAPS_ROOT}/map_${OCN_GRID_NAME}_to_${ATM_GRID_NAME}_trfv2.${DATE}.nc"      --drc_tmp="${TMP_ROOT}"
#ncremap -5 --alg_typ=trintbilin       --grd_src="${OCN_GRID}" --grd_dst="${ATM_GRID}" --map_fl="${MAPS_ROOT}/map_${OCN_GRID_NAME}_to_${ATM_GRID_NAME}_trintbilin.${DATE}.nc" --drc_tmp="${TMP_ROOT}"

# ATM -> OCN
#ncremap -5 --a2o --alg_typ=traave     --grd_src="${ATM_GRID}" --grd_dst="${OCN_GRID}" --map_fl="${MAPS_ROOT}/map_${ATM_GRID_NAME}_to_${OCN_GRID_NAME}_traave.${DATE}.nc"     --drc_tmp="${TMP_ROOT}"
#ncremap -5 --a2o --alg_typ=trbilin    --grd_src="${ATM_GRID}" --grd_dst="${OCN_GRID}" --map_fl="${MAPS_ROOT}/map_${ATM_GRID_NAME}_to_${OCN_GRID_NAME}_trbilin.${DATE}.nc"    --drc_tmp="${TMP_ROOT}"
#ncremap -5 --a2o --alg_typ=trfv2      --grd_src="${ATM_GRID}" --grd_dst="${OCN_GRID}" --map_fl="${MAPS_ROOT}/map_${ATM_GRID_NAME}_to_${OCN_GRID_NAME}_trfv2.${DATE}.nc"      --drc_tmp="${TMP_ROOT}"
ncremap -5 --a2o --alg_typ=trintbilin --grd_src="${ATM_GRID}" --grd_dst="${OCN_GRID}" --map_fl="${MAPS_ROOT}/map_${ATM_GRID_NAME}_to_${OCN_GRID_NAME}_trintbilin.${DATE}.nc" --drc_tmp="${TMP_ROOT}"

# SPA -> ATM
ncremap -5 --alg_typ=traave --grd_src=${GRIDS_ROOT}/ne${NE}pg2_scrip.nc --grd_dst=${ATM_GRID} --map_fl=${MAPS_ROOT}/map_ne30pg2_to_${ATM_GRID_NAME}_traave.${DATE}.nc --drc_tmp="${TMP_ROOT}"

