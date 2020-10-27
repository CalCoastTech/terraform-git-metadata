data "external" "git_metadata" {
  working_dir = path.module
  program     = ["bash", "./get-git-metadata.sh"]
}

output "ref" {
  value = lookup(data.external.git_metadata.result, "ref", "unknown")
}

output "url" {
  value = lookup(data.external.git_metadata.result, "url", "unknown")
}

output "sha" {
  value = lookup(data.external.git_metadata.result, "sha", "unknown")
}

output "all" {
  value = tomap({
    "git_ref" = lookup(data.external.git_metadata.result, "ref", "unknown")
    "git_url" = lookup(data.external.git_metadata.result, "url", "unknown")
    "git_sha" = lookup(data.external.git_metadata.result, "sha", "unknown")
  })
}
