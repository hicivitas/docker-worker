FROM jenkinsci/jnlp-slave:3.7-1
USER root
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get install -y openssl openssh-client git curl nodejs build-essential \
    && curl -sLO https://github.com/github/git-lfs/releases/download/v2.1.1/git-lfs-linux-amd64-2.1.1.tar.gz \
    && tar zxvf git-lfs-linux-amd64-2.1.1.tar.gz \
    && mv git-lfs-2.1.1/git-lfs /usr/bin/ \
    && rm -rf git-lfs-2.1.1 \
    && rm -rf git-lfs-linux-amd64-2.1.1.tar.gz \
    && git lfs install
