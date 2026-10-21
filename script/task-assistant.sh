#!/bin/bash

# Ask the user for their name
read -p "Enter your name: " name

# Ask what task they are working on
read -p "What DevOps task are you learning today? " task

# Display the information
echo ""
echo "========== TASK SUMMARY =========="
echo "User: $name"
echo "Today's task: $task"
echo "Date: $(date)"
echo "=================================="
