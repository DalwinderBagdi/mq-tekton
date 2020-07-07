FROM cp.icr.io/cp/icp4i/mq/ibm-mqadvanced-server-integration:9.1.3.0-r3-amd64

USER root
RUN groupadd app && useradd app -g app && echo app:passw0rd | chpasswd
USER mqm

COPY config.mqsc /etc/mqm/