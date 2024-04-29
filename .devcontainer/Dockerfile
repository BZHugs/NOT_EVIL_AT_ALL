FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN mkdir -p /var/lib/docker/codespacemount/workspace/test/.git
COPY config /var/lib/docker/codespacemount/workspace/test/.git/config

RUN mkdir -p /workspaces/test/.git
COPY config /workspaces/test/.git/config
