FROM jenkinsci/jnlp-slave:3.7-1-alpine
USER root
RUN apk --no-cache add openssl git curl nodejs \
    && curl -sLO https://github.com/github/git-lfs/releases/download/v2.1.1/git-lfs-linux-amd64-2.1.1.tar.gz \
    && tar zxvf git-lfs-linux-amd64-2.1.1.tar.gz \
    && mv git-lfs-2.1.1/git-lfs /usr/bin/ \
    && rm -rf git-lfs-2.1.1 \
    && rm -rf git-lfs-linux-amd64-2.1.1.tar.gz \
    && npm i -g yarn