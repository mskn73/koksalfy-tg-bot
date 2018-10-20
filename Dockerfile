FROM python:2.7.15-stretch

RUN pip install pyTelegramBotAPI && \
  pip install opencv-python && \
  apt update && apt-get upgrade -y && \
  apt install -y python-opencv && \
  apt clean


COPY . .

CMD [ "python", "./koksalfybot.py" ]
