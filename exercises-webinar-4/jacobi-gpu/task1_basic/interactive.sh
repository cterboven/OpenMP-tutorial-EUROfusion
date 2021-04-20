#!/usr/local_rwth/bin/zsh
 
### Job name
#SBATCH -J PPCES2019.%J

### Request one GPU
#SBATCH -p c18g
#SBATCH --gres=gpu:1

### File / path where STDOUT & STDERR will be written
### %J is the job ID
#SBATCH -o PPCES2019.%J.out
#SBATCH -e PPCES2019.%J.err
 
### Request the time you need for execution in minutes
### The format for the parameter is: hour:minute:seconds
#SBATCH -t 00:10:00
 
### Request memory you need for your job in TOTAL in GB
#SBATCH --mem=5G
 
### Use Advanced Reservation 
##SBATCH -A hpclab --reservation=...

### Start a console
srun -p c18g -N 1 --pty /bin/zsh