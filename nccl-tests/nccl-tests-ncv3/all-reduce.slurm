#!/bin/bash
#SBATCH -t 00:20:00
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=6
#SBATCH --gpus-per-node=4
#SBATCH --mem=0
#SBATCH -o %x_%j.log

BASE_DIR=/opt
NCCL_TESTS_EXE=all_reduce_perf

source nccl-env-var.sh
source /etc/profile.d/modules.sh
module load mpi/hpcx

#PIN_MASK example (adjust as necessary): '000000000fff,000000000fff'

srun --mpi=pmix \
    --gpus-per-node=4 \
    --ntasks-per-node=4 \
    ${BASE_DIR}/nccl-tests/build/$NCCL_TESTS_EXE -b 8 -f 2 -g 1 -e 8G -c 1
