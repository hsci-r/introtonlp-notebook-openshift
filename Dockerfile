FROM jupyter/base-notebook:latest

USER root
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  build-essential libpoppler-cpp-dev pkg-config python3-dev

ENV NB_GID=0

RUN fix-permissions /home/jovyan /opt/conda

RUN pip install --no-cache-dir spacy feedparser pdftotext bs4 lxml

ENV NB_GID=100

USER ${NB_UID}
