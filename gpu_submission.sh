#!/bin/bash
#SBATCH --account=b1218
#SBATCH --partition=cs-gpu
#SBATCH --time=01:00:00
#SBATCH --job-name=example-gpu-job
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:a100:1
#SBATCH --mem=5G
 
module purge all
module load cuda/12.2.2-gcc-10.4.0
nvcc --version
nvidia-smi --query-gpu=name,utilization.gpu,memory.used --format=csv
