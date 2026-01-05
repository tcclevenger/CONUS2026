#!/bin/bash
#SBATCH --job-name=spa_mapping_gen            # Job name
#SBATCH --constraint=cpu                  # Partition (queue) name
#SBATCH --nodes=1                         # Number of nodes
#SBATCH --time=8:00:00                   # Time limit (8 hours)
#SBATCH --account=e3sm
#SBATCH --qos=regular

RES=${1:-1024x2}

# Navigate to the directory containing the scripts
cd /global/homes/t/tccleve/E3SM-Project/E3SM_Main/CONUS-grid-gen

# Source the scripts
source setup_env.sh $RES
source domain-file-gen.sh

# Add any additional commands below
echo "Job completed successfully."

