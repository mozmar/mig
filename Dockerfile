FROM quay.io/mozmar/base

RUN cd ~root && \
	curl -LO https://s3.amazonaws.com/mozopsecrepo2/mig-public/engeng/mig-agent_20160715-0.a06734a.prod_amd64.deb && \
	[ `sha256sum mig-agent_20160715-0.a06734a.prod_amd64.deb | cut -d ' ' -f 1` \
	= "f70a3308199824495dc4329ac73f21db8f78ef1c619853e39155659edbebd834" ] && \
	dpkg -i mig-agent_20160715-0.a06734a.prod_amd64.deb

CMD ["/sbin/mig-agent", "-f"]
