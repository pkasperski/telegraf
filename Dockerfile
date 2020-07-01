FROM telegraf

RUN echo "deb http://deb.debian.org/debian stretch main contrib non-free\n \
    deb http://security.debian.org/debian-security stretch/updates main\n \
    deb http://deb.debian.org/debian stretch-updates main contrib non-free" > /etc/apt/sources.list && \
    apt-get update && apt-get install -y ipmitool snmp-mibs-downloader --no-install-recommends && \
    apt-get clean && rm -rf /var/lib/apt/lists/
