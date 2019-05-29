# trigger build
FROM jupyter/scipy-notebook:latest

MAINTAINER Thomas Paviot <tpaviot@gmail.com>

USER root

RUN apt-get update
RUN apt-get dist-upgrade
RUN apt-get install -y software-properties-common
RUN apt-get install -y build-essential
RUN apt-get install -y gfortran
RUN apt-get install -y libstdc++6

RUN conda install -c conda-forge mshr
RUN conda list

RUN conda install tbb=
USER jovyan
WORKDIR /home/jovyan/work
RUN git clone https://github.com/spatialaudio/computational_acoustics.git
