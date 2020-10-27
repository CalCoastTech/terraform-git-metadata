# Basic Example
This is a basic example for how to use this module.

When running a `terraform plan` or `terraform apply` this example will create an S3 Bucket resource with tags from this module.

Example `terraform plan` output with `aws_s3_bucket.bucket.tags{}`:
```terraform
  # aws_s3_bucket.bucket will be created
  + resource "aws_s3_bucket" "bucket" {
      + arn                         = (known after apply)
      + bucket                      = "my-tf-test-bucket"
      ...
      + tags                        = {
          + "Environment" = "Dev"
          + "Name"        = "My bucket"
          + "git_ref"     = "master"
          + "git_sha"     = "9272b098866f537b59ce390bba39ffc3b8601601"
          + "git_url"     = "https://github.com/calcoasttech/terraform-aws-s3-bucket.git"
        }
    }
```
