#!/bin/bash
# chmod 755 mvS3Objects.sh to make sure you can execute this file
# how to run ./mvS3Objects.sh fileName.txt
FILE=$1
while read LINE; do
     aws s3 sync s3://source-0904-test s3://desti-0904-test --exclude "*" --include "$LINE" --profile fightingProfile
done < $FILE
