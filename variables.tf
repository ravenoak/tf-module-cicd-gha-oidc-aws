variable "oidc_provider" {
  type = object({
    url = string
    arn = string
  })
  validation {
    condition     = can(regex("arn:aws:iam::.*:oidc-provider/.*", var.oidc_provider.arn))
    error_message = "OIDC Provider ARN must be in the format arn:aws:iam::account-id:oidc-provider/provider-name"
  }
}

variable "project_repository" {
  type = string
}

variable "project_branch" {
  type    = string
  default = "*"
}
