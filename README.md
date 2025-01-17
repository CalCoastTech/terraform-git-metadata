# Terraform Module
Provides a module to get metadata from the git repo [i.e. a terraform module].  These output values can be used to tag resources created by a module.

# Examples
 - [Basic](./examples/basic/)

# Reference
<!--- BEGIN_TF_DOCS --->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| external | n/a |

## Inputs

No input.

## Outputs

| Name | Description |
|------|-------------|
| all | Single map with all git metadata |
| ref | Abbreviated reference for current HEAD. Typically returns the current branch name. |
| sha | Commit SHA for current HEAD |
| url | URL for remote repository named 'origin' |

<!--- END_TF_DOCS --->
