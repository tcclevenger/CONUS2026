#!/bin/bash
#SBATCH --job-name=spa_mapping_gen            # Job name
#SBATCH --constraint=cpu                  # Partition (queue) name
#SBATCH --nodes=1                         # Number of nodes
#SBATCH --time=0:10:00                   # Time limit 
#SBATCH --account=e3sm
#SBATCH --qos=regular

# Navigate to the directory containing the scripts
cd /global/homes/t/tccleve/E3SM-Project/E3SM_Main/CONUS-grid-gen

# Source the scripts
source setup_env.sh
source spa-grid-file-gen.sh

# Add any additional commands below
echo "Job completed successfully."

