#!/bin/bash

cd /usr/local/src/security_monkey
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
virtualenv venv
source venv/bin/activate
pip install --upgrade setuptools
pip install --upgrade pip
pip install --upgrade urllib3[secure]   # to prevent InsecurePlatformWarning
python setup.py develop