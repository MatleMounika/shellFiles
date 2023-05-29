#!/bin/bash
echo "Enter package to install"
read pack
if [ [ $EUID -ne 0 ] ]
then
  apt-get install $pack
  echo "The package  is installing."
else
  echo "The package can not be installed, try again."
fi
