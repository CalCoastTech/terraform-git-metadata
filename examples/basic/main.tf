module "git_metadata" {
  source = "git@github.com:calcoasttech/terraform-git-metadata.git"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  # Use merge() to combine multiple mappings into one map
  tags = merge(
    {
      Name        = "My bucket"
      Environment = "Dev"
    },
    module.git_metadata.all
  )
}
