#!/bin/bash
#PBS -N test_mpi_dask
#PBS -P WCHPC
#PBS -q gpu_temp
#PBS -l select=1:ncpus=40:ngpus=4:mpiprocs=20
#PBS -l select=1:mem=40GB
#PBS -l walltime=00:20:00
#PBS -o output_dask_SVG.out
#PBS -e error_dask_SVG.out 
#PBS -m abe



cd $PBS_O_WORKDIR
module load chpc/cuda/11.2/SXM2/11.2 chpc/openmpi/4.0.0/gcc-7.3.0 chpc/openblas/0.2.19/gcc-6.1.0 chpc/astro/anaconda/3

mpirun --np 2 ./a.out
