#!/bin/bash

yes | conda remove -n test-f --all

yes | conda create -n test-new
conda activate test-new
echo ACTIVATOIN_DONE
yes | conda install conda-build
conda env list
conda list
conda build grass-conda

