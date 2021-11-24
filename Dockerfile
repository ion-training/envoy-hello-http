FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y curl
RUN curl -fsSL https://func-e.io/install.sh | bash -s -- -b /usr/local/bin


# https://func-e.io/ envoy
RUN cp `func-e run --version | grep starting | awk '{print $2}'` /usr/local/bin
ENTRYPOINT [ "envoy", "-c /etc/envoy.d/envoy.conf.yml" ]
