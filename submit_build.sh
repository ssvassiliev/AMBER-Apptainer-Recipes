#!/bin/bash
#SBATCH -A def-svassili -c4 --mem=64000 --time=6:0:0

module load apptainer

apptainer build pmemd26-plumed-cuda.MPI.sif pmemd26-plumed-cuda.MPI.def
