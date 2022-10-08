FROM python:3.8-slim-buster

WORKDIR /ansible

COPY . .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
# to save playbooks
# VOLUME .:/ansible
