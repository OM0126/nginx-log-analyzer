#!/bin/bash

# Check if log file argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: ./log-analyzer.sh <logfile>"
    exit 1
fi

LOGFILE="$1"

# Check whether the file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

echo "=============================================="
echo "Top 5 IP addresses with the most requests"
echo "=============================================="

awk '{print $1}' "$LOGFILE" \
| sort \
| uniq -c \
| sort -rn \
| head -5 \
| awk '{print $2 " - " $1 " requests"}'

echo
echo "=============================================="
echo "Top 5 Most Requested Paths"
echo "=============================================="

awk -F'"' '{print $2}' "$LOGFILE" \
| awk '{print $2}' \
| sort \
| uniq -c \
| sort -rn \
| head -5 \
| awk '{print $2 " - " $1 " requests"}'

echo
echo "=============================================="
echo "Top 5 Response Status Codes"
echo "=============================================="

awk '{print $9}' "$LOGFILE" \
| sort \
| uniq -c \
| sort -rn \
| head -5 \
| awk '{print $2 " - " $1 " requests"}'

echo
echo "=============================================="
echo "Top 5 User Agents"
echo "=============================================="

awk -F'"' '{print $6}' "$LOGFILE" \
| sort \
| uniq -c \
| sort -rn \
| head -5 \
| awk '{
    count=$1
    $1=""
    sub(/^ /,"")
    print $0 " - " count " requests"
}'
