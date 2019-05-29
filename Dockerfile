# trigger build
FROM jupyter/scipy-notebook:61d8aaedaeaf

MAINTAINER Thomas Paviot <tpaviot@gmail.com>

USER root

RUN conda install -c conda-forge fenics
RUN conda install -c conda-forge mshr

WORKDIR /opt/build
RUN git clone https://github.com/spatialaudio/computational_acoustics.git

####################
# back to user mode #
#####################
USER jovyan
WORKDIR /home/jovyan/work
