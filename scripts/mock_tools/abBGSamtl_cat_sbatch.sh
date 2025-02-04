#!/bin/bash
#SBATCH --time=02:30:00
#SBATCH --qos=regular
#SBATCH --nodes=1
#SBATCH --constraint=cpu
#SBATCH --array=0-24
#SBATCH --account=desi

source /global/common/software/desi/users/adematti/cosmodesi_environment.sh main
PYTHONPATH=$PYTHONPATH:$HOME/LSS/py

srun /pscratch/sd/a/acarnero/codes/LSS/scripts/mock_tools/run1_AMTLmock_LSS_BGS.sh $SLURM_ARRAY_TASK_ID
