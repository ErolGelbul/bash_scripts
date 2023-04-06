#!/bin/bash

# List of websites to monitor
WEBSITES_LIST="https://example1.com https://example2.com https://example3.com"

# Email notification settings
EMAIL_TO="you@example.com"
EMAIL_SUBJECT="Website Monitoring Alert"

# Temporary file to store results
TEMP_FILE="/tmp/website_monitor_temp.txt"

# Function to check website status
check_website_status() {
  local URL=$1
  local RESPONSE=$(curl -o /dev/null --silent --head --write-out '%{http_code}' "$URL")
  echo "$RESPONSE"
}

# Loop through websites and check their status
for WEBSITE in $WEBSITES_LIST; do
  STATUS=$(check_website_status "$WEBSITE")

  if [ "$STATUS" -ne 200 ]; then
    echo "Website: $WEBSITE is down. Status code: $STATUS" >> "$TEMP_FILE"
  fi
done

# If any website is down, send an email notification
if [ -s "$TEMP_FILE" ]; then
  mail -s "$EMAIL_SUBJECT" "$EMAIL_TO" < "$TEMP_FILE"
fi

# Cleanup temporary file
rm "$TEMP_FILE"
