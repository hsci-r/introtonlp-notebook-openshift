FROM jupyter/base-notebook:latest

USER root
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  build-essential libpoppler-cpp-dev pkg-config python3-dev

RUN fix-permissions /home/jovyan /opt/conda

RUN pip install --no-cache-dir spacy feedparser pdftotext bs4 lxml

USER 1000
