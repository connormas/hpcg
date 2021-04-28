#!/bin/bash

#SBATCH --job-name=HPCG_MPICH          # Job name
#SBATCH --ntasks=30                    # Run on 30 CPUs
#SBATCH --mem=1gb                      # Job memory request
#SBATCH --time=00:10:00                # Time limit hrs:min:sec


module purge
spack load mpich

mpirun -np 30 bin/xhpcg
