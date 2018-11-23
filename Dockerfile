FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install python-pip -y

ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
CMD ["python", "app.py"]

