FROM python:3.4-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD . /usr/src/app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD [ "python3", "./app.py" ]