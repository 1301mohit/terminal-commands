cat ../../linux-content/access.log | awk '{ print $7 }' | sort -n | uniq -c | head -4
