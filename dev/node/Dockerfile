FROM dkraemer/dev-base:latest

ARG node_version

RUN curl -sSLO https://nodejs.org/dist/${node_version}/node-${node_version}-linux-x64.tar.xz && \
    tar xfa node-${node_version}-linux-x64.tar.xz -C /opt --no-same-owner && \
    rm -fv node-${node_version}-linux-x64.tar.xz && \
    ln -sv /opt/node-${node_version}-linux-x64/bin/* /usr/local/bin/ && \
    echo "export PATH=${PATH}:/opt/node-${node_version}-linux-x64/bin" >>/root/.bashrc && \
    echo "export PATH=${PATH}:/opt/node-${node_version}-linux-x64/bin" >>/root/.profile && \
    npm install -g yarn && \
    ln -sv /opt/node-${node_version}-linux-x64/bin/yarn* /usr/local/bin/

ENTRYPOINT [ "/bin/bash" ]
