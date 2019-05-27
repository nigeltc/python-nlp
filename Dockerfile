# Start from Debian-Stretch + Python 3.7
FROM python:3.7-stretch
RUN apt-get update && apt-get upgrade -y && apt-get install -y apt-utils
# Install emacs
RUN apt-get install -y emacs-nox
# Install spaCy and English Models
RUN pip install -U spacy
RUN python -m spacy download en_core_web_sm && python -m spacy download en_core_web_md && python -m spacy download en_core_web_md
