FROM ubuntu:18.04
MAINTAINER vmelnic "win32hack@gmail.com"

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh

RUN apt-get update -y --fix-missing && \
    apt-get install -y net-tools software-properties-common wget locales && \
    add-apt-repository -y ppa:deluge-team/ppa && \
    apt-get update -y && \
    apt-get install -y deluged deluge-webui && \
    rm -rf /var/lib/apt/lists/* && \
    localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 && \
    perl -pi -e 's/\r\n/\n/g' /usr/local/bin/entrypoint.sh && \
    chmod 755 /usr/local/bin/entrypoint.sh && \
    ln -s usr/local/bin/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

CMD ["/bin/bash", "-c", "tail -f /dev/null"]
