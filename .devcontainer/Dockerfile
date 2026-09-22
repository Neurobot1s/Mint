FROM linuxmintd/mint21.3-amd64

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV DISPLAY=:1

RUN apt-get update && apt-get install -y \
    xfce4 \
    xfce4-goodies \
    xfce4-terminal \
    dbus-x11 \
    dbus \
    xvfb \
    x11vnc \
    novnc \
    websockify \
    sudo \
    curl \
    wget \
    git \
    nano \
    ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Codespaces user
RUN useradd -m -s /bin/bash vscode \
    && echo "vscode ALL=(ALL) NOPASSWD:ALL" \
       > /etc/sudoers.d/vscode \
    && chmod 0440 /etc/sudoers.d/vscode

RUN mkdir -p /home/vscode/.vnc \
    && chown -R vscode:vscode /home/vscode

COPY start-gui.sh /usr/local/bin/start-gui.sh

RUN chmod +x /usr/local/bin/start-gui.sh

USER vscode
WORKDIR /home/vscode

EXPOSE 6080

CMD ["/usr/local/bin/start-gui.sh"]
