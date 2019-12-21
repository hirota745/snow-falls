FROM bitnami/minideb

ADD sources.list /etc/apt/
ADD run.sh /
RUN chmod +x /run.sh
RUN apt-get update && apt-get install -y x11-xserver-utils xsnow xpenguins

ENTRYPOINT ["./run.sh"]
