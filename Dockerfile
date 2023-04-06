FROM python:latest

WORKDIR /app

COPY requirements.txt /app/

RUN /bin/sh apt update && apt upgrade -y
RUN /bin/sh apt install git python3-pip ffmpeg -y

COPY . .

RUN /bin/sh -c pip3 install -r requirements.txt

COPY . /app

CMD python3 bot.py
