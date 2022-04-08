#!/bin/bash
find /home/log -maxdepth 1 -type d -name "2*" -ctime +365 -exec rm -rf {} \;
