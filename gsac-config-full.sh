#!/bin/bash
##### This Script Has Been Written By N.Dolatabadi ##########################################

#### If you were in need, contact me ------> syn_org939@rocketmail.com ######################
#### You can have a look at my github too ------> https://github.com/NimaDolatabadi/Earthquake-Seismology ######
## Installing needed libraries and dependencies ####
sudo su
apt-get install make gcc gfortran xorg-dev libcurses5-dev gawk gv ImageMagic

### Download GSAC which is Develped By Herman ####

wget -c --retry-connrefused --tries=0 --timeout=5 http://www.eas.slu.edu/eqc/eqc_cps/Download/NP330.Jan-05-2018.tgz

## Untar it ##

tar -xf NP330.Jan-05-2018.tgz

cd PROGRAMS.330/

echo 'lets install GSAC'


./setup

# this will show you the following results#

#	Checking for existence of bin and lib directories
#	Directory bin exists
#	Directory lib exists
#	Usage: Setup SOL WIN32 SOL-EGCS LINUX LINUX64 CYGWIN OSX
#	SOL
#	SUN Solaris Compilers
#	SOL-GNU SUN Solaris with gcc/g77 compilers
#	CYGWIN
#	CYGWIN 98/NT/2K/XP gcc/g77 Compilers
#	CYGWIN40 CYGWIN 98/NT/2K/XP gcc/gfortran Compilers
#	LINUX
#	Linux with gcc/g77 compilers
#	LINUX40 Linux with gcc/gfortran compilers
#	LINUX64 Linux 64 bit with gcc/g77 compilers
#	LINUX6440 Linux 64 bit with gcc/gfortran compilers
#	OSX
#	Apple with gcc/g77 compilers
#	OSX40
#	Apple with gcc/gfortran compilers
#	OSF
#	DEC/Compaq ALPHA cc/f77

arch=$(uname -m)
        if [ "$arch" == "x86_64" ]
then
        ./Setup LINUX64
	./C
else
        ./Setup LINUX40
	.C
fi

echo '#GSAC' >> ~/.bashrc
echo "export $PATH=$pwd/PROGRAMS.330/bin:$PATH" >> ~/.bashrc
