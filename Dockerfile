FROM pytorch/pytorch:1.5-cuda10.1-cudnn7-devel

RUN apt update

RUN pip install kaggle
COPY ./kaggle.json /root/.kaggle/kaggle.json
RUN chmod 600 /root/.kaggle/kaggle.json

RUN apt install unzip
