## Basic Commands
1. create a bucket: aws s3 mb s3://bucket-name
2. delete a bucket: aws s3 rb s3://bucket-name. if bucket is not empty, use aws s3 rb s3://bucket-name --force
3. list buckets: aws s3 ls. list items in a bucket, aws s3 ls s3://bucket-name
4. [cp](https://docs.aws.amazon.com/cli/latest/reference/s3/cp.html) files: aws s3 cp source dest [--exclude value] [--include value] [--recursive], e.g aws s3 cp ./ s3://source-0904-test --exclude "*" --include "a*" --recursive
5. difference between cp and sync: Using aws s3 cp from the AWS cli will require the --recursive parameter to copy multiple files. The aws s3 sync command will, by default, copy a whole directory. It will only copy ***new/modified*** files.

## Deal with Multiple AWS Accounts
### aws configure command
1. Use aws configure --profile profileName to configure each aws account. 
2. Check out all profiles: cat ~/.aws/config
3. To use aws cli for a certain aws account, append --profile profileName at the end to specify which account to use. E.g list s3 buckts for aws account sourceAccount which has profile name as profifeSource: aws s3 ls --profile profileSource
4. when --profile profileName not specified, it's the default profile used.

### Operations
copy s3 files from one bucket in one aws account to another bucket in another aws account: follow [this tutorial](https://medium.com/tensult/copy-s3-bucket-objects-across-aws-accounts-e46c15c4b9e1)
