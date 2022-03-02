#! /usr/bin/bash

git clone git@gitlab.ecosystem-modelling.pml.ac.uk:gle/nemo404.git nemo
svn checkout http://forge.ipsl.jussieu.fr/ioserver/svn/XIOS/branchs/xios-2.5 xios
zip -r nemo-xios.zip nemo xios
