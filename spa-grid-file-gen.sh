#!/bin/bash

GenerateCSMesh --alt --res ${NE} --file ${GRIDS_ROOT}/ne${NE}.g
GenerateVolumetricMesh --in ${GRIDS_ROOT}/ne${NE}.g --out ${GRIDS_ROOT}/ne${NE}pg2.g --np 2 --uniform
ConvertMeshToSCRIP --in ${GRIDS_ROOT}/ne${NE}pg2.g --out ${GRIDS_ROOT}/ne${NE}pg2_scrip.nc 

