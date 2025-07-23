#!/bin/bash
#SBATCH --account=b1218
#SBATCH --partition=cs-cpu
#SBATCH --time=01:00:00
#SBATCH --job-name=example-gpu-job
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=5G
 
module purge all
module load python-miniconda3/4.12.0
python --version
