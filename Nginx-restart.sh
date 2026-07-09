#!/bin/bash

echo "Restarting Nginx..."

sudo systemctl restart nginx

if [ $? -eq 0 ]; then
    echo "Nginx restarted successfully."
else
    echo "Failed to restart Nginx."
fi

echo "Current Nginx Status:"
sudo systemctl status nginx --no-pager