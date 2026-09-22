#!/bin/bash

set -e

export DISPLAY=:1
export XDG_CURRENT_DESKTOP=XFCE
export XDG_SESSION_DESKTOP=xfce

# Virtual display
Xvfb :1 \
    -screen 0 1280x720x24 \
    -ac \
    +extension GLX \
    +render \
    -noreset &

sleep 2

# Start D-Bus + XFCE
dbus-launch --exit-with-session \
    startxfce4 &

sleep 5

# VNC server
x11vnc \
    -display :1 \
    -forever \
    -shared \
    -rfbport 5901 \
    -nopw \
    -listen 127.0.0.1 &

sleep 2

# Browser-based VNC
websockify \
    --web=/usr/share/novnc/ \
    6080 \
    127.0.0.1:5901
