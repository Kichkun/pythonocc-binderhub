# trigger build
FROM jupyter/scipy-notebook:61d8aaedaeaf

MAINTAINER Thomas Paviot <tpaviot@gmail.com>

USER root

RUN apt-get update
RUN apt-get install -y software-properties-common

#RUN conda install -c conda-forge mshr
RUN conda install -c conda-forge fenics
RUN conda install -c libgfortran

USER jovyan
WORKDIR /home/jovyan/work
RUN git clone https://github.com/spatialaudio/computational_acoustics.git
