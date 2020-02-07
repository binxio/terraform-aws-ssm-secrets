resource "aws_ssm_parameter" "parameter" {
  name      = var.name
  type      = var.type
  overwrite = var.overwrite_enabled
  value     = data.aws_kms_secrets.secret.plaintext[var.name]
}

data "aws_kms_secrets" "secret" {
  secret {
    name    = var.name
    payload = var.value
  }
}