#!/bin/bash

if [ -f "./bash-dir-loader" ]; then
  cat "./bash-dir-loader" >> ~/.bashrc
fi

# Copy directories
if [ -d ".bash_config" ]; then
  cp -r .bash_config ~
fi
if [ -d ".config" ]; then
  cp -r .config ~
fi


