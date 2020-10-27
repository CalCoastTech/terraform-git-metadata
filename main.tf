data "external" "git_metadata" {
  working_dir = path.module
  program     = ["bash", "./get-git-metadata.sh"]
}

output "ref" {
  description = "Abbreviated reference for current HEAD. Typically returns the current branch name."
  value = lookup(data.external.git_metadata.result, "ref", "unknown")
}

output "url" {
  description = "URL for remote repository named 'origin'"
  value = lookup(data.external.git_metadata.result, "url", "unknown")
}

output "sha" {
  description = "Commit SHA for current HEAD"
  value = lookup(data.external.git_metadata.result, "sha", "unknown")
}

output "all" {
  description = "Single map with all git metadata"
  value = tomap({
    "git_ref" = lookup(data.external.git_metadata.result, "ref", "unknown")
    "git_url" = lookup(data.external.git_metadata.result, "url", "unknown")
    "git_sha" = lookup(data.external.git_metadata.result, "sha", "unknown")
  })
}
