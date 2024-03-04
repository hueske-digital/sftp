FROM atmoz/sftp:alpine

COPY sshd_config /etc/ssh/sshd_config
COPY wrapper.sh /wrapper

ENTRYPOINT ["/wrapper"]