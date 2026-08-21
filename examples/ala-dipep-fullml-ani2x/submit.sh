#!/bin/bash
#SBATCH --nodes=1 -A def-svassili 
#SBATCH --ntasks 4 --gpus=nvidia_h100_80gb_hbm3_1g.10gb:1 
#SBATCH --mem-per-cpu=4000 --time=10:0

SIF_PATH=$SCRATCH/AMBER-Apptainer-Recipes

module load apptainer
apptainer exec --nv $SIF_PATH/pmemd26_torchani-amber1e06f33_pt2.8.0_cu12.8.1_ubuntu24.04.sif \
	mpirun -n $SLURM_NTASKS pmemd.MPI -O -c system.inpcrd -p system.prmtop -i input.mdin 
