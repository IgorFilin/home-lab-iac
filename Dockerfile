FROM node:20-slim

RUN apt update && \
    apt install -y curl && \
    apt install -y unzip && \
    apt-get install -y jq && \
    curl -sSL http://192.168.0.104/static/vault_1.21.1_linux_amd64.zip -o /tmp/vault.zip && \
    unzip /tmp/vault.zip -d /usr/local/bin && \
    rm /tmp/vault.zip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*