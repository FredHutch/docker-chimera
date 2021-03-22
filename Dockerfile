FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y wget libfreetype6

RUN mkdir /usr/local/chimera && \
    cd /usr/local/chimera && \
    wget --quiet -O chimera-installer.bin "https://www.cgl.ucsf.edu/chimera/cgi-bin/secure/chimera-get.py?ident=OHeQer2WTqRn%2F%2BJrtnhC%2BP1gr0FSRNj80ht23gj5gfU%3D&file=linux_x86_64%2Fchimera-1.15-linux_x86_64.bin&choice=Notified" && \
    chmod +x chimera-installer.bin && \
    echo /usr/local/chimera/bin | ./chimera-installer.bin && \
    ln -s echo /usr/local/chimera/bin/bin/* /usr/local/bin/
