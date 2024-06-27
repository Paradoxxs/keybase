FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntujammy
LABEL maintainer="Paradoxxs"
# title
ENV TITLE=Keybase


# Install dependencies
RUN apt-get update
RUN curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
RUN apt install -y ./keybase_amd64.deb
COPY /root /


# Expose VNC
EXPOSE 3000 