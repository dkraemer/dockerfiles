FROM dkraemer/dev-base:latest

ARG node_version

# Install node.js 
RUN curl -sSLO https://nodejs.org/dist/${node_version}/node-${node_version}-linux-x64.tar.xz && \
    tar xfa node-${node_version}-linux-x64.tar.xz -C /opt --no-same-owner && \
    rm -fv node-${node_version}-linux-x64.tar.xz && \
    # Install yarn
    export PATH=${PATH}:/opt/node-${node_version}-linux-x64/bin && \
    npm install -g yarn && \
    ln -sv /opt/node-${node_version}-linux-x64/bin/* /usr/local/bin && \
    # Install additional packages
    yarn global add typescript tsdx 

ENTRYPOINT [ "/bin/bash" ]
