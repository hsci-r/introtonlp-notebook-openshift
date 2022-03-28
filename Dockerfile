FROM jupyter/base-notebook:latest

USER root
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  build-essential libpoppler-cpp-dev pkg-config python3-dev

RUN pip install --no-cache-dir spacy feedparser pdftotext bs4 lxml
