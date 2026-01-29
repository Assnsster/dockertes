FROM ubuntu:latest
RUN apt update -y 
RUN apt install python3 -y
RUN pip install requests flask
RUN wget 
