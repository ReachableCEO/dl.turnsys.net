#!/bin/bash

WEBHOOK_URL="https://discord.com/api/webhooks/829537026285109278/8sxWSbvowBR_Lyf48c8UaUyppzOd9PdqTFkzSFBl9uEV1YnuB76WnbS1S0qT9kY6OuJf"
CLIENT_IP=$(echo $SSH_CONNECTION | awk '{print $1}')
MESSAGE="You aren't alone.... **$USER** has logged in to **$(hostname)** at $(date) from **$CLIENT_IP**"
JSON="{\"content\": \"$MESSAGE\"}"

curl -d "$JSON" -H "Content-Type: application/json" "$WEBHOOK_URL"

