FROM gliderlabs/consul-agent:0.6
ADD ./config /config/
ADD https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_web_ui.zip /tmp/webui.zip
ADD ./entrypoint.sh /entrypoint.sh
RUN cd /tmp && mkdir /ui && unzip webui.zip -d /ui && rm webui.zip
ENTRYPOINT ["/entrypoint.sh"]
