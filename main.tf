data "aws_iam_policy_document" "github_actions_oidc_trust" {
  statement {
    principals {
      identifiers = [var.oidc_provider.arn]
      type        = "Federated"
    }
    actions = ["sts:AssumeRoleWithWebIdentity"]
    condition {
      test     = "StringEquals"
      variable = "${var.oidc_provider.url}:aud"
      values   = ["sts.amazonaws.com"]
    }
    condition {
      test     = "StringLike"
      variable = "${var.oidc_provider.url}:sub"
      values   = ["repo:${var.project_repository}:${var.project_branch}"]
    }
  }
}
