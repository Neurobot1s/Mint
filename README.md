# 🐧 Linux Mint GUI — GitHub Codespaces

> A full Linux Mint userspace with a graphical XFCE desktop running inside GitHub Codespaces and accessible directly from your browser.

![Linux Mint](https://img.shields.io/badge/Linux%20Mint-GUI-brightgreen?style=for-the-badge&logo=linuxmint)
![GitHub Codespaces](https://img.shields.io/badge/GitHub-Codespaces-black?style=for-the-badge&logo=github)
![XFCE](https://img.shields.io/badge/Desktop-XFCE-blue?style=for-the-badge&logo=xfce)
![noVNC](https://img.shields.io/badge/GUI-noVNC-orange?style=for-the-badge)

## ✨ Features

- 🐧 Linux Mint userspace
- 🖥️ XFCE graphical desktop
- 🌐 Browser-based GUI through noVNC
- ☁️ Runs inside GitHub Codespaces
- 🔌 Port forwarding support
- 🧑‍💻 Normal non-root user
- 🛠️ Development tools included
- ⚡ Lightweight desktop environment
- 📱 Accessible from mobile or PC
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/Neurobot1s/Mint?quickstart=1)

## 🏗️ How It Works

```text
GitHub Codespace
       │
       ▼
 Linux Mint
       │
       ▼
    XFCE GUI
       │
       ▼
    Xvfb
       │
       ▼
    x11vnc
       │
       ▼
    noVNC
       │
       ▼
  Port 6080
       │
       ▼
   🌐 Browser
