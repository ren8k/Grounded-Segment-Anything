#!/bin/bash
set BUILD_WITH_CUDA=True
set CUDA_HOME="path"
set AM_I_DOCKER=False

cd GroundingDINO

python setup.py build

python setup.py install

pip uninstall numpy -y
pip install numpy==1.24.3
pip install supervision==0.21.0
