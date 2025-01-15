#!/bin/bash

# Email details
TO_EMAIL="your-email-here"
SUBJECT="System Report: $(date)"
BODY=$(df -h; echo ""; uptime; echo ""; free -h)

# Send the email
echo -e "Subject: $SUBJECT\n\n$BODY" | msmtp "$TO_EMAIL"

echo "Email sent to $TO_EMAIL."

