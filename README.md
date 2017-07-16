# LSS
Codes used to create LSS catalogue and randoms

LSScatGen.py is a python code that creates the LSS catalogue for quicksurvey2016.

The random files are generated by a bunch of scripts.

bm_imaging.py looks at the input targeting file and models average number
density as a function of various parameters (extinction, depth, etc.)

This information is then read by make_imaging_ran.py which makes random
catalogues reflecting the angular variations in the targeting.

For sample .slurm and input/output files see /project/projectdirs/desi/datachallenge/LSScat on NERSC

For sample output catalogue and randoms see /project/projectdirs/desi/datachallenge/LSScat/quicksurvey2016 
and /project/projectdirs/desi/datachallenge/LSScat/quicksurvey2017 on NERSC

# pipeline:

To get the catalogue, randoms, and the correlation function/power spectra you can submit the following jobs in the
following order to NERSC:

test_lsscat.slurm (creates LSS catalogue, can be run independently of others in any order)
test_bm_imaging.slurm (backwards modelling imaging randoms, has to be run before other random creating scripts)
test_imaging_ran.slurm (creating imaging randoms, has to be run after the "backwards modelling imaging" step)
...
fiber assignment
...
correlation functions
