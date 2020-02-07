# Terraform AWS SSM Secrets Module

This module facilitates the creation of parameter store secure strings using the `aws_kms_secrets` data source. This enables 
us to keep and manage secret definitions in git without exposing them.

## Usage

The secret's encrypted payload should be assigned to the `value` variable.

```hcl-terraform
module "SecretName" {
  source = "binxio/ssm-secrets/aws"
  name = "{SecretName}"
  value = "{EncryptedSecret}"
}
```

To encrypt a secret use [the following aws cli command](https://docs.aws.amazon.com/cli/latest/reference/kms/encrypt.html):
```
aws kms encrypt --key-id {key-arn} --plaintext {secret} --query CiphertextBlob --output text --region eu-west-1
```

The output of the command can then be passed to the `value` field of the module.