#!/bin/bash

echo "Top 5 IP Addresses"
echo "------------------"
awk '{print $1}' access.log | sort | uniq -c | sort -nr | head -5

echo ""

echo "Top 5 Requested paths"
echo "---------------------"
awk -F'"' '{print $2}' access.log | cut -d' ' -f2 | sort | uniq -c | sort -nr | head -5

echo ""

echo "Top 5 Status Codes"
echo "------------------"
awk '{print $9}' access.log | sort | uniq -c | sort -nr | head -5

echo ""

echo "Top 5 User Agents"
echo "-----------------"
awk -F'"' '{print $6}' access.log | sort | uniq -c | sort -nr | head -5
