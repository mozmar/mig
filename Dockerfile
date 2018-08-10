FROM debian:stretch

ADD mig-agent_20180803-0.e8eb90a.prod_amd64.deb .
RUN dpkg -i mig-agent_20180803-0.e8eb90a.prod_amd64.deb

CMD ["/sbin/mig-agent", "-f"]
