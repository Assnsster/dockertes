FROM ubuntu:latest
WORKDIR /app
RUN apt update -y 
RUN apt install python3 python3-pip  python3-venv python3-flask unzip python3-requests wget curl -y
RUN wget https://github.com/Assnsster/dockertes/releases/download/1/casioutils.zip
RUN cp /usr/bin/python3 /usr/bin/python
RUN unzip -o casioutils.zip
WORKDIR /app/web
CMD ["python3", "run.py"]
