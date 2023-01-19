#!/bin/bash

# Update package manager
yum update -y

# Install development tools
yum groupinstall "Development Tools" -y

# Download and extract latest Python source code
curl -O https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tgz
tar xvf Python-3.9.1.tgz

# Navigate to extracted source code directory
cd Python-3.9.1

# Configure and make
./configure --enable-optimizations
make -j 8

# Install new version of Python
make altinstall

# Check new version of Python
python3.9 --version
