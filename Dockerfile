FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y sudo curl wget python3 python3-pip

copy requirements.txt requirements.txt

copy cbot cbot

RUN pip3 install -r requirements.txt

CMD python3 cbot/start.py


