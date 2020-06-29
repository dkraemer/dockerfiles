FROM debian:buster-slim

COPY .bashrc /root/.bashrc

RUN apt-get update && \ 
    export DEBIAN_FRONTEND=noninteractive && \
    #
    # Prevent 'apt-utils not installed' messages
    apt-get install -y apt-utils && \
    #
    # Install required packages
    apt-get install -y git curl xz-utils && \ 
    #
    # Install & setup packages for interactive mode
    apt-get install -y dialog locales && \
    echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
    locale-gen && \
    #
    # Upgrade packages and clean-up
    apt-get upgrade -y && \
    apt-get autoremove -y --purge && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* && \
    #
    # Fix file permissions (Maybe file was copied from Windows)
    chmod -x /root/.bashrc

ENTRYPOINT [ "/bin/bash" ]
