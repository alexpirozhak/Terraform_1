aws s3api create-bucket --bucket 287453796941-terraform-tfstate --region eu-central-1 --create-bucket-configuration LocationConstraint=eu-central-1

aws s3api put-bucket-versioning --bucket 287453796941-terraform-tfstate --versioning-configuration Status=Enabled


aws dynamodb create-table --region eu-central-1 --table-name 287453796941-terraform-tfstate-lock --attribute-definitions AttributeName=LockID, AttributeType=S --key-schema AttributeName=LockID,KeyType=HASH --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1