# trigger build
FROM jupyter/scipy-notebook:61d8aaedaeaf

MAINTAINER Thomas Paviot <tpaviot@gmail.com>

USER root

RUN add-apt-repository ppa:fenics-packages/fenics
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get install -y build-essential
RUN apt-get install -y --no-install-recommends fenics

USER jovyan
WORKDIR /home/jovyan/work
RUN git clone https://github.com/spatialaudio/computational_acoustics.git
