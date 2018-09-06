# Pull Ubuntu Image
FROM ubuntu:xenial

# Update apt-get packages
RUN apt-get update

# Install curl
RUN apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

RUN apt-get update

RUN apt-get install -y docker-ce

# Add sourcs for gitlab-runner
RUN curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | bash

# Install gitlab-runner
RUN apt-get -y install gitlab-runner=10.0.0

# Mount /etc/gitlab-runner to share config.toml with the host
VOLUME /etc/gitlab-runner

ENTRYPOINT ["/usr/bin/gitlab-runner"]

# Call register by default
CMD ["register"]
