#!/bin/bash

brew tap homebrew/science

# Install dependencies
pip install -U nose
pip install -U six
pip install -U pygments
pip install -U sphinx
pip install -U cython
pip install -U pillow
pip install -U scapy
pip install -U shapely
pip install -U lxml
pip install -U cheetah

# Install python packages
pip install -U numpy

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
