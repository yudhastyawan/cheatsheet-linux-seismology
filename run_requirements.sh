while read line; do 
sudo apt -y install "$line" 
done << EOF 
build-essential
gcc
gfortran
cdftools
cmake
curl
ffmpeg
gdal-bin
gdal-devel
gdal-python
ghostscript
ghostscript-x
glibc
graphicsmagick
libblas-dev
libcurl4-gnutls-dev
libfftw3-dev
libgdal1-dev
libgdal-dev
libglib2.0-dev
liblapack-dev
libnetcdf11
libnetcdf-dev
libnetcdff6
libnetcdff-dev
libpcre3-dev
make
subversion
xdg-utils
EOF
