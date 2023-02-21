FROM ubuntu
LABEL Sirius <sirius_see@outlook.com>
RUN apt-get update && \
    apt-get install -y python \
                       python-dev \
                       python-pip \
                       flac \
                       lame && \
    && apt-get clean \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
RUN pip install git+https://github.com/ZivaVatra/flac2all.git@57-errors-on-invoking-latest-version#egg=flac2all
RUN mkdir -p /app
WORKDIR /app
CMD ["bash"]