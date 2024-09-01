# tf-module-cicd-gha-oidc-aws
A Terraform module for setting up OIDC for CI/CD in AWS for a project in GitHub Actions.

## Usage
```hcl
module "oidc_trust" {
  source = "github.com/ravenoak/tf-module-cicd-gha-oidc-aws.git"
  oidc_provider = aws_iam_openid_connect_provider.github_actions
  project_repository = "username/reponame"
}
```
