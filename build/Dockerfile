FROM atmoz/sftp:alpine

RUN apk add --update --no-cache inotify-tools

COPY sshd_config /etc/ssh/sshd_config
COPY wrapper.sh /wrapper

ENTRYPOINT ["/wrapper"]