#!/bin/bash
find /opt -type f -name "*.zip" -cmin -480 -exec cp {} /mnt/share \;
