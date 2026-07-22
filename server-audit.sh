#!/bin/bash

echo "---Server Audit Report---" > audit-log.txt
echo "" >> audit-log.txt
date >> audit-log.txt
echo "" >> audit-log.txt
free -m >> audit-log.txt
echo "" >> audit-log.txt
df -h >> audit-log.txt
echo "" >> audit-log.txt
