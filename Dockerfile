# trigger build
FROM jupyter/scipy-notebook:61d8aaedaeaf

MAINTAINER Thomas Paviot <tpaviot@gmail.com>

USER root

RUN add-apt-repository ppa:fenics-packages/fenics
RUN apt-get update
RUN apt-get install --no-install-recommends fenics

RUN conda install -c conda-forge mshr

USER jovyan
WORKDIR /home/jovyan/work
RUN git clone https://github.com/spatialaudio/computational_acoustics.git
