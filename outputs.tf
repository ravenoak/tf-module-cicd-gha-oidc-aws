output "policy_json" {
  value = data.aws_iam_policy_document.github_actions_oidc_trust.json
}
