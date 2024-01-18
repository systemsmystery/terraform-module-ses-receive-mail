# Terraform Module - SES Receive Mail

This module will create a new rule set within SES and set it as the default.

The list of domain provided will then be configured to receive email from `admin@{{domain}}`.

## Terraform Resources

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ses_active_receipt_rule_set.main](https://registry.terraform.io/providers/hashicorp/aws/5.31.0/docs/resources/ses_active_receipt_rule_set) | resource |
| [aws_ses_receipt_rule.admin_sns](https://registry.terraform.io/providers/hashicorp/aws/5.31.0/docs/resources/ses_receipt_rule) | resource |
| [aws_ses_receipt_rule_set.main](https://registry.terraform.io/providers/hashicorp/aws/5.31.0/docs/resources/ses_receipt_rule_set) | resource |
| [aws_sns_topic.incoming_email](https://registry.terraform.io/providers/hashicorp/aws/5.31.0/docs/resources/sns_topic) | resource |
| [aws_sns_topic_subscription.incoming_email](https://registry.terraform.io/providers/hashicorp/aws/5.31.0/docs/resources/sns_topic_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email_domains"></a> [email\_domains](#input\_email\_domains) | List of email domains to configure allow | `list(string)` | n/a | yes |
| <a name="input_sns_sub_endpoint"></a> [sns\_sub\_endpoint](#input\_sns\_sub\_endpoint) | Destination for SNS notifications | `string` | n/a | yes |
| <a name="input_sns_sub_protocol"></a> [sns\_sub\_protocol](#input\_sns\_sub\_protocol) | Protocol for SNS notifications | `string` | `"email"` | no |
| <a name="input_sns_topic_name"></a> [sns\_topic\_name](#input\_sns\_topic\_name) | Name of SNS topic | `string` | `"SES-Email-Incoming"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
