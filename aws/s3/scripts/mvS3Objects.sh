#!/bin/bash
# this script is to copy s3 objects from one bucket in one aws account to another bucket in another aws account
# input: fileName.txt contains s3 object names that are needed to copy to 
# chmod 755 mvS3Objects.sh to make sure you can execute this file
# how to run ./mvS3Objects.sh fileName.txt

FILE=$1
while read LINE; do
     aws s3 sync s3://source-0904-test s3://desti-0904-test --exclude "*" --include "$LINE" --profile fightingProfile
done < $FILE
