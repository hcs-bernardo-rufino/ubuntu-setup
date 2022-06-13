#!/bin/bash -i
while getopts v: flag
do
    case "${flag}" in
        v) version=${OPTARG};;
    esac
done

# Setup python 3.9.7 using pyenv
pyenv install $version

# Defines the fresh installed version as the default (global)
pyenv global $version

# Checking if everthing is okay
python --version
which python