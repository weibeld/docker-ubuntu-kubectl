FROM ubuntu:18.04

RUN apt-get update && \
  apt-get install -y apt-transport-https curl gnupg2 && \
  curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
  echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" >/etc/apt/sources.list.d/kubernetes.list && \
  apt-get update && \
  apt-get install -y kubectl

CMD ["sleep", "infinity"]
