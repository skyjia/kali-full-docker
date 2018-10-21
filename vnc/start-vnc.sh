#!/bin/sh

# Start XServer
vncserver :1 &

# Start noVNC server
/root/noVNC/utils/launch.sh --vnc localhost:5901
