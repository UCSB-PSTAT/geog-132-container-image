FROM ucsb/jupyter-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN apt update -qq && \
    apt upgrade -y && \
    apt install -y unzip && \
    apt-get clean

RUN mamba install -y netcdf4 cartopy gdal proj libgdal krb5

USER $NB_USER
