#!/bin/bash -i
cd $HOME
# Install dependencies
bash $HOME/ubuntu-setup/install_dependencies.sh

# Install Python version defined with flag -v
exec $SHELL & $HOME/ubuntu-setup/install_python.sh -v 3.9.7