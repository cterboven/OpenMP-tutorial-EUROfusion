#!/usr/local_rwth/bin/zsh
 
### Job name
#SBATCH -J Task3

### Request one GPU
#SBATCH -p c18g
#SBATCH --gres=gpu:1
#SBATCH --nodelist=nrg02

### File / path where STDOUT & STDERR will be written
#SBATCH -o Task3.%J.out
#SBATCH -e Task3.%J.err
 
### Request the time you need for execution in minutes
### The format for the parameter is: hour:minute:seconds
#SBATCH -t 01:00:00
 
### Request memory you need for your job in TOTAL in GB
#SBATCH --mem=5G
 
### Use Advanced Reservation 
##SBATCH -A hpclab --reservation=...
 
### setup environment
module load pgi/20.1
module load cuda/102
 
### Compile & Execute your application
make clean
make
#make run
OMP_NUM_THREADS=1 ./jacobi
nvprof -f -o base.nvprof --analysis-metrics jacobi
#nvprof -f -o tuned.nvprof --analysis-metrics jacobi
