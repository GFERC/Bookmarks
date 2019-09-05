## Basic Commands
1. create a bucket: aws s3 mb s3://bucket-name
2. delete a bucket: aws s3 rb s3://bucket-name. if bucket is not empty, use aws s3 rb s3://bucket-name --force
3. list buckets: aws s3 ls. list items in a bucket, aws s3 ls s3://bucket-name
4. [cp](https://docs.aws.amazon.com/cli/latest/reference/s3/cp.html) files: aws s3 cp source dest [--exclude value] [--include value] [--recursive], e.g aws s3 cp ./ s3://source-0904-test --exclude "*" --include "a*" --recursive

