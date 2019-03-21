FROM python:3

MAINTAINER KevinDuy <mr.kevinduy@gmail.com>

# Install packages
ADD install.sh /install.sh

RUN chmod +x /*.sh

RUN ./install.sh

RUN usermod -u 1000 www-data

# Install python packages
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
