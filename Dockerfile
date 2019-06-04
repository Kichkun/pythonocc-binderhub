# trigger build
FROM jupyter/scipy-notebook:latest

MAINTAINER Thomas Paviot <tpaviot@gmail.com>

USER root

RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get install -y software-properties-common
RUN apt-get install -y build-essential

RUN conda update -n base conda
RUN conda install -c conda-forge mshr

USER jovyan
WORKDIR /home/jovyan/work
RUN git clone https://github.com/spatialaudio/computational_acoustics.git
