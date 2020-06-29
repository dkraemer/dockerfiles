FROM dkraemer/dev-node:latest

RUN yarn global add @angular/cli http-server firebase-tools

# 4200/tcp: angular serve
# 8080/tcp: http-server
# 9005/tcp: firebase cli auth callback
EXPOSE 4200/tcp 8080/tcp 9005/tcp
ENTRYPOINT [ "/bin/bash" ]
