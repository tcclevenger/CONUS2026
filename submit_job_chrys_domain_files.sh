#!/bin/bash
#SBATCH --job-name=domain_gen            # Job name
#SBATCH --nodes=1                         # Number of nodes
#SBATCH --time=18:00:00                   # Time limit (48 hours)
#SBATCH --account=e3sm                    # Account to charge
#SBATCH --mail-type=BEGIN,END,FAIL        # Specify when to send emails
#SBATCH --mail-user=tccleve@sandia.gov    # Specify the email address

RES=${1:-1024x2}

# Navigate to the directory containing the scripts
cd /lcrc/group/e3sm/ac.tccleve/scratch/chrys/CONUS2026

# Source the scripts
source setup_chrys_env.sh $RES
source domain-file-gen.sh

# Add any additional commands below
echo "Job completed successfully."

