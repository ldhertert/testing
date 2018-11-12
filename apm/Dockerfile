FROM ubuntu

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

WORKDIR /app

RUN pip install flask && pip install ddtrace

COPY . /app

ENTRYPOINT [ "ddtrace-run", "python", "app.py" ]