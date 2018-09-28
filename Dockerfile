FROM ubuntu:18.04

# install a few tools
RUN apt-get update && \
  apt-get install -y --no-install-recommends python binutils lsof && \
  rm -rf /var/lib/apt/lists/*

  # add home dir content to image
  ADD home/ /root

  # set working directory
  WORKDIR /root
