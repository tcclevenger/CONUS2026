#!/bin/bash

RES=${1:-1024x2}

DIN_LOC_ROOT=/global/cfs/cdirs/e3sm/inputdata
E3SM_ROOT=/global/homes/t/tccleve/E3SM-Project/E3SM_Main/E3SM

CONUS_ROOT=/global/cfs/cdirs/e3sm/2026-INCITE-CONUS-RRM
GRIDS_ROOT=${CONUS_ROOT}/files_grid
MAPS_ROOT=${CONUS_ROOT}/files_map
DOMAINS_ROOT=${CONUS_ROOT}/files_domain
TOPO_ROOT=${CONUS_ROOT}/files_topo

TMP_ROOT=/global/cfs/cdirs/e3sm/tccleve/tmp

DATE=20251121

OCN_GRID_NAME=RRSwISC6to18E3r5
ATM_GRID_NAME=2026-incite-conus-${RES}-pg2

OCN_GRID=${DIN_LOC_ROOT}/ocn/mpas-o/${OCN_GRID_NAME}/ocean.${OCN_GRID_NAME}.nomask.scrip.20240327.nc
ATM_GRID=${GRIDS_ROOT}/${ATM_GRID_NAME}_scrip.nc

source /global/common/software/e3sm/anaconda_envs/load_latest_e3sm_unified_pm-cpu.sh

#module load python
#conda activate hiccup_env

