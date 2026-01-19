#!/bin/bash

RES=${1:-1024x2}
NE=30
DATE=20251121

DIN_LOC_ROOT=/lcrc/group/e3sm/data/inputdata
E3SM_ROOT=/home/tclevenger/E3SM-Project/E3SM_Main/E3SM

CONUS_ROOT=/lcrc/group/e3sm/ac.tccleve/scratch/chrys/2026-INCITE-CONUS-RRM
GRIDS_ROOT=${CONUS_ROOT}/files_grid
MAPS_ROOT=${CONUS_ROOT}/files_map
DOMAINS_ROOT=${CONUS_ROOT}/files_domain

TMP_ROOT=${CONUS_ROOT}/tmp

OCN_GRID_NAME=RRSwISC6to18E3r5
ATM_GRID_NAME=2026-incite-conus-${RES}-pg2

OCN_GRID=${DIN_LOC_ROOT}/ocn/mpas-o/${OCN_GRID_NAME}/ocean.${OCN_GRID_NAME}.nomask.scrip.20240327.nc
ATM_GRID=${GRIDS_ROOT}/${ATM_GRID_NAME}_scrip.nc

source /lcrc/soft/climate/e3sm-unified/load_e3sm_unified_1.12.0_chrysalis.sh

