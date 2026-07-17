#!/bin/bash
#SBATCH -A def-svassili -c4 --mem=64000 --time=3:0:0

module load apptainer

apptainer build pmemd26_plumed2.10.1_cu12.8.1_ubuntu22.04.sif pmemd26_plumed2.10.1_cu12.8.1_ubuntu22.04.def
