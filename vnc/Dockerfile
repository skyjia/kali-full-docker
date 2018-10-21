FROM skyjia/kali-docker-full

LABEL maintainer="Sky Jia <me@skyjia.com>"

# Add Xwindows configuration
ADD .vnc /root/.vnc
ADD .Xauthority /root/.Xauthority

# Copy start-vnc script
ADD start-vnc.sh /start-vnc.sh

# Configure user for Xwindows
ENV USER root

RUN apt-get update && \
    apt-get install -y --fix-missing git python tightvncserver x11vnc xfce4 && \
    apt-get autoremove -y && \
    apt-get clean && \
    git clone --depth 1 https://github.com/novnc/noVNC.git /root/noVNC && \
    git clone --depth 1 https://github.com/novnc/websockify.git /root/noVNC/utils/websockify && \
    chmod 0755 /start-vnc.sh

# Expose VNC & websockify ports
EXPOSE 5901 6080
ENTRYPOINT [ "/start-vnc.sh" ]