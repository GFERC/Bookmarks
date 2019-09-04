### 1. When finding by file name, how to not show permission denied messages.
There are so many that they hide the real output of interest. How to hide “permission denied” lines: 
1. find where-to-look criteria action 2>/dev/null. However, this filters out all error messages, not just permission denied. 
2. Use find /path/to/dir -name "search-patter" 2>&1 | grep -v "Permission denied" to only filter out permission denied lines. 
Ref from [nixCraft](https://www.cyberciti.biz/faq/bash-find-exclude-all-permission-denied-messages/)
