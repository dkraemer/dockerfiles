FROM debian:buster-slim

COPY .bashrc /root/.bashrc

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update && \
    #
    # Prevent 'apt-utils not installed' messages
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y apt-utils && \
    #
    # Install required packages
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y git curl xz-utils && \ 
    #
    # Install & setup packages for interactive mode
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y dialog locales && \
    echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
    locale-gen && \
    #
    # Upgrade packages and clean-up
    DEBIAN_FRONTEND=noninteractive \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get autoremove -y --purge && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* && \
    #
    # Fix file permissions (Maybe file was copied from Windows)
    chmod -x /root/.bashrc

ENTRYPOINT [ "/bin/bash" ]
