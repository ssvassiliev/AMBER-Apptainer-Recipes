#!/bin/bash
#SBATCH --nodes=1 -A def-svassili --ntasks 4 --gpus=nvidia_h100_80gb_hbm3_1g.10gb:1 --mem-per-cpu=4000   --time=10:0

module load apptainer
apptainer exec --nv /scratch/svassili/AMBER-Apptainer-Recipes/pmemd26_torchani.sif \
	mpirun -n 4 pmemd.MPI -O  -c system.inpcrd  -p system.prmtop -i input.mdin 
