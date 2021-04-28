#!/bin/bash

#SBATCH --job-name=HPCG          # Job name
#SBATCH --nodes=9                   #  multiple nodes
#SBATCH --mem=230gb                    # Job memory request
#SBATCH --time=00:40:00                # Time limit hrs:min:sec

export OMP_NUM_THREADS=1

spack load mpich

# mpirun -np 120 bin/xhpcg --nx=128 --ny=128 --nz=128
#mpirun -np 270 bin/xhpcg --nx=16 --ny=96 --nz=80 
mpirun -np 270 bin/xhpcg
# --nx=16 --n6=96 --nz=80
