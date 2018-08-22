#!/bin/sh
apt-get update -y
apt-get install -qy vim
apt-get install -qy libxt6 libxrender1 libgl1-mesa-glx # for GR
apt-get install -qy bzip2 # for IJulia
