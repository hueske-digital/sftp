#!/bin/bash

ORIGINAL_ENTRYPOINT="/entrypoint"

monitor_ssh_keys_and_kill_processes() {
    local watch_dir="/home/${SFTP_USERNAME}/.ssh/keys"

    inotifywait -m -e create -e modify -e delete -e move "$watch_dir" | while read -r directory events filename; do
        echo "New file $filename detected, reloading."
        pkill -u "$(whoami)"
    done
}

monitor_ssh_keys_and_kill_processes &

exec "$ORIGINAL_ENTRYPOINT" "$@"