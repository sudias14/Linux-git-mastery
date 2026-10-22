#!/bin/bash

read -p "Enter your name: " name

if [ -z "$name" ]; then
    echo "Error: Your name cannot be empty."
    exit 1
fi

read -p "What DevOps task are you learning today? " task

if [ -z "$task" ]; then
    echo "Error: Your task cannot be empty."
    exit 1
fi

echo ""
echo "========== TASK SUMMARY =========="
echo "User: $name"
echo "Today's task: $task"
echo "Date: $(date)"
echo "=================================="

if [ "$task" = "Linux" ]; then
    echo "Great! You are practising Linux."
elif [ "$task" = "Docker" ]; then
    echo "Great! You are learning containerization."
elif [ "$task" = "Git" ]; then
    echo "Great! You are practising version control."
else
    echo "Keep learning and building your DevOps skills!"
fi
