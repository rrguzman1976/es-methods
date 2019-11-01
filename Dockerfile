# Uses buster/18.10
FROM ubuntu:18.04

# Set Locale - required for ODBC driver
RUN apt-get update \
    && apt-get install -y \
        locales \
    && apt-get update \
    && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen \
    && locale-gen

ENV ACCEPT_EULA=Y
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Download appropriate package for the OS version
RUN apt-get update \
    && apt-get install -y \
        curl \
        software-properties-common \
    && apt-get update \
    && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && curl https://packages.microsoft.com/config/ubuntu/18.10/prod.list > /etc/apt/sources.list.d/mssql-release.list \
    && apt-get update \
    && apt-get install -y \
        msodbcsql17 \
        mssql-tools \
        unixodbc-dev \
        python3-pip \
    && apt-get update \
    && rm -rf /var/lib/apt/lists/*
ENV APP_HOME /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt ${APP_HOME}/requirements.txt

RUN buildDeps='build-essential git' \
    && set -x \
    && apt-get update \
    && apt-get install -y $buildDeps \
    && apt-get update \
    && pip3 install --upgrade pip==9.0.3 \
    && pip3 install --no-cache-dir -r requirements.txt \
    && rm -rf /var/lib/apt/lists/* 
    #&& apt-get purge -y --auto-remove $buildDeps

COPY ./main.py ${APP_HOME}/main.py

CMD [ "python3.6", "main.py" ]