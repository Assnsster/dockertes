FROM ubuntu:latest
WORKDIR /app
RUN apt update -y 
RUN apt install python3 python3-pip  python3-venv python3-flask python3-requests -y
RUN wget https://github.com/Assnsster/dockertes/releases/download/1/casioutils.zip
RUN unzip -o casioutils.zip
WORKDIR /app/web
CMD ["python", "run.py"]
