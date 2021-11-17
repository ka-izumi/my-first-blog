FROM python:3.8.6-slim

COPY ./run.sh /run.sh
COPY ./requirements.txt /requirements.txt

RUN apt-get update && \
    apt-get install -y \
        build-essential \
        python3-dev \
        python3-setuptools \
        git \
        make \
        gcc \
        curl \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

COPY ./ /


RUN pip install -r requirements.txt

RUN chmod +x run.sh

CMD [ "./run.sh" ]
