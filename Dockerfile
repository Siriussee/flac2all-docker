# syntax=docker/dockerfile:1
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y python3 python3-pip flac lame git
RUN apt-get clean && apt-get autoclean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
RUN pip install git+https://github.com/ZivaVatra/flac2all.git@57-errors-on-invoking-latest-version#egg=flac2all
CMD ["bash"]