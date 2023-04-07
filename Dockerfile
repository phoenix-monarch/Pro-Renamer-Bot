FROM python:latest

WORKDIR /app

COPY requirements.txt /app/

RUN /bin/bash -c /bin/bash apt update && apt upgrade -y
RUN /bin/bash apt install git python3-pip ffmpeg -y

COPY . .

RUN /bin/bash pip3 install -r requirements.txt

COPY . /app

CMD python3 bot.py
