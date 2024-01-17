FROM ucsb/jupyter-base:latest

MAINTAINER LSIT Systems <lsitops@lsit.ucsb.edu>

USER root

RUN mamba install -y netcdf4 cartopy gdal proj

#RUN pip install <libraries>

USER $NB_USER
