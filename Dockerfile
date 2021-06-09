FROM python:3.8-buster

WORKDIR /usr/src/app

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

COPY ./requirements.txt ./
RUN python -m pip install -r requirements.txt

COPY ./ ./
RUN python setup.py install
