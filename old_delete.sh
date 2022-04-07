#!/bin/bash
find /home/log -type d -name "2*" -maxdepth 1 -ctime +365 -exec rm -rf {} \;
