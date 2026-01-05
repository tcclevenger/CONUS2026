#!/bin/bash
#SBATCH --job-name=mapping_gen            # Job name
#SBATCH --constraint=cpu                  # Partition (queue) name
#SBATCH --nodes=1                         # Number of nodes
#SBATCH --time=48:00:00                   # Time limit (48 hours)
#SBATCH --account=e3sm
#SBATCH --qos=regular

RES=${1:-1024x2}
WALLTIME=${2:-48:00:00}

# Update the wallclock time dynamically based on input
#SBATCH --time=$WALLTIME

# Navigate to the directory containing the scripts
cd /global/homes/t/tccleve/E3SM-Project/E3SM_Main/CONUS-grid-gen

# Source the scripts
source setup_env.sh $RES
source mapping-file-gen.sh

# Add any additional commands below
echo "Job completed successfully."

