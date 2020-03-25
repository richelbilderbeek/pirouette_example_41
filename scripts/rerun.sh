#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex41
#SBATCH --output=example_41.log
#
rm -rf example_41
rm *.png
time Rscript example_41.R
zip -r pirouette_example_41.zip example_41 example_41.R scripts *.png

