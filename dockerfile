FROM ubuntu:latest
WORKDIR /app
RUN apt update -y 
RUN apt install python3 -y
RUN pip install requests flask
RUN wget https://github.com/Assnsster/dockertes/releases/download/1/casioutils.zip
RUN unzip -o casioutils.zip
WORKDIR /app/web
CMD ["python", "run.py"]
