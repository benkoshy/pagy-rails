FROM pagy:4

USER root
# Install node 14-LTS and yarn
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get update -qq && apt-get install -qq --no-install-recommends \
    nodejs \
    dumb-init \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
RUN npm install -g yarn@1

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["tail", "-f", "/dev/null"]

USER $user
