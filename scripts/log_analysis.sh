#!/bin/bash
# Lists the top 10 source IPs with failed SSH logins
LOG="${1:-/var/log/auth.log}"
grep "Failed password" "$LOG" | awk '{print $(NF-3)}' | sort | uniq -c | sort -rn | head -10
