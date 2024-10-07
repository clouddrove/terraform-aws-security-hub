## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| auto\_enable\_controls | Whether to automatically enable new controls when they are added to standards that are enabled. <br>By default, this is set to true, and new controls are enabled automatically. <br>To not automatically enable new controls, set this to false. | `bool` | `true` | no |
| control\_finding\_generator | Updates whether the calling account has consolidated control findings turned on. <br>If the value for this field is set to SECURITY\_CONTROL, <br>Security Hub generates a single finding for a control check even when the check applies to multiple enabled standards. <br>If the value for this field is set to STANDARD\_CONTROL, <br>Security Hub generates separate findings for a control check when the check applies to multiple enabled standards. <br>For accounts that are part of an organization, <br>this value can only be updated in the administrator account. | `string` | `null` | no |
| enable | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| enable\_default\_standards | Flag to indicate whether default standards should be enabled | `bool` | `true` | no |
| enabled\_products | The possible values are:<br>- product/aws/guardduty<br>- product/aws/inspector<br>- product/aws/macie | `list(any)` | `[]` | no |
| enabled\_standards | The possible values are:<br>- standards/aws-foundational-security-best-practices/v/1.0.0<br>- ruleset/cis-aws-foundations-benchmark/v/1.2.0<br>- standards/pci-dss/v/3.2.1 | `list(any)` | `[]` | no |
| member\_details | n/a | <pre>list(object({<br>    account_id = string<br>    mail_id    = string<br>    invite     = bool<br>  }))</pre> | `[]` | no |
| name | n/a | `string` | `""` | no |
| security\_hub\_enabled | To Enable seucirty-hub in aws account | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the secuirty hub. |
