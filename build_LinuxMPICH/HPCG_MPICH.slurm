#!/bin/bash

#SBATCH --job-name=HPCG_MPICH          # Job name
#SBATCH --ntasks=30                    # Run on 30 CPUs
#SBATCH --mem=10gb                      # Job memory request
#SBATCH --time=00:10:00                # Time limit hrs:min:sec


module purge
module load mpich-3.3.2-gcc-9.3.0-ezz7c7a 

# salloc -N 2 --time=1-5
mpirun -np 120 bin/xhpcg
# exit
