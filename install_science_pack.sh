#!/bin/bash

# Taken from the ScipySuperpack
# https://github.com/fonnesbeck/ScipySuperpack/blob/master/install_superpack.sh
# not tested

brew install gcc

pip install -U nose
pip install -U six
pip install -U pygments
pip install -U sphinx
pip install -U cython

# Install python packages
pip install -U lxml
pip install -U cheetah

pip install numpy

pip install pillow
pip install scapy

# Jupyter 
brew install zeromq
pip install -U jupyter

# SciPy
pip install -U git+git://github.com/scipy/scipy

# Matplotlib
brew install freetype
pip install -U git+git://github.com/matplotlib/matplotlib.git

# Rest of the stack
pip install -U git+git://github.com/pydata/pandas.git 
pip install -U git+git://github.com/scikit-learn/scikit-learn.git
pip install -U git+git://github.com/pymc-devs/pymc.git
pip install -U git+git://github.com/statsmodels/statsmodels.git
pip install -U git+git://github.com/Theano/Theano.git

# Geopandas
pip install -U git+git://github.com/geopandas/geopandas.git

numpy
pandas (version 0.15.2 or later)
shapely
fiona
six
pyproj
