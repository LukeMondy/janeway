FROM debian:stretch

RUN apt-get update -q \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        default-libmysqlclient-dev \
        gcc \
        git \
        lib32z1-dev \
        libffi-dev \
        libjpeg-dev \
        libmagic-dev \
        libssl-dev \
        libxml2-dev \
        libxslt1-dev \
        python3 \
        python3-dev \
        python3-pip \
        wget \
        zlib1g-dev \
    && apt-get clean autoclean \
    && apt-get autoremove --yes \
    && rm -rf /var/lib/{apt,dpkg,cache,log}/ \
    && pip3 install setuptools

RUN git clone https://github.com/BirkbeckCTP/janeway.git /opt/janeway \
    && cd /opt/janeway \
    && pip3 install -r requirements.txt

WORKDIR /opt/janeway/src

COPY settings.py core/settings.py
COPY install_janeway.txt /tmp/install_janeway.txt

RUN cat /tmp/install_janeway.txt | python3 manage.py install_janeway
