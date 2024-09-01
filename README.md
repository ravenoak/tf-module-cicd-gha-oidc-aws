<!-- BEGIN_TF_DOCS -->
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

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.65.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy_document.github_actions_oidc_trust](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_oidc_provider"></a> [oidc\_provider](#input\_oidc\_provider) | n/a | <pre>object({<br>    url = string<br>    arn = string<br>  })</pre> | n/a | yes |
| <a name="input_project_branch"></a> [project\_branch](#input\_project\_branch) | n/a | `string` | `"*"` | no |
| <a name="input_project_repository"></a> [project\_repository](#input\_project\_repository) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_policy_json"></a> [policy\_json](#output\_policy\_json) | n/a |
<!-- END_TF_DOCS -->
