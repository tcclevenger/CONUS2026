#!/bin/bash

MAP_FILE=${MAPS_ROOT}/map_${OCN_GRID_NAME}_to_${ATM_GRID_NAME}_traave.${DATE}.nc

python ${E3SM_ROOT}/tools/generate_domain_files/generate_domain_files_E3SM.py -m ${MAP_FILE} -o ${OCN_GRID_NAME} -l ${ATM_GRID_NAME} --date-stamp=${DATE} --output-root=${DOMAINS_ROOT}

