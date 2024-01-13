FROM python:3.8-bullseye

COPY ./requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

COPY . /app
WORKDIR /app/MugenEvolve

ENTRYPOINT ["/usr/bin/python3","main.py"]
