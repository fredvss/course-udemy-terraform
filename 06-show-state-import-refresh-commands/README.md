### Terraform show commands
- `terraform show plan.tfplan` - shows the plan file in a human-readable format
- `terraform show -json plan.tfplan` - shows the plan file in JSON format
- `terraform show`- shows the current state of the infrastructure in a human-readable format
- `terraform show -json` - shows the current state of the infrastructure in JSON format

### Terraform state commands
- `terraform state list` - lists all resources in the current state
- `terraform state show <resource>` - shows the attributes of a specific resource in the current state
- `terraform state pull` - pulls the current state from the backend and outputs it in JSON format
- `terraform state push <state-file>` - pushes a local state file to the backend (use with caution, as it can overwrite the current state)
- `terraform state mv <source> <destination>` - moves a resource from one address to another in the state file
- `terraform state rm <resource>` - removes a resource from the state file (use with caution, as it can lead to orphaned resources)

### Terraform state pull commands
- `terraform state pull` - pulls the current state from the backend and outputs it in JSON format
- `terraform state pull > <state-file>` - pulls the current state and saves it to a local file named `<state-file>`
    
### Terraform state push commands
- `terraform state push <state-file>` - pushes a local state file to the backend (use with caution, as it can overwrite the current state)
- `terraform state push -force <state-file>` - forces the push of a local state file to the backend, even if it would overwrite the current state (use with caution)

### Terraform state replace-provider commands
- `terraform state replace-provider <old-provider> <new-provider>` - replaces the provider for all resources in the state file that use the old provider with the new provider. This is useful when you want to switch to a different provider or version of a provider without having to recreate all resources.

## Terraform import command
- `terraform import <resource> <id>` - imports an existing resource into the Terraform state

## Terraform refresh command
- `terraform refresh` - updates the state file with the current state of the infrastructure, without making any changes to the actual resources. This is useful for ensuring that the state file accurately reflects the current state of the infrastructure, especially after making changes outside of Terraform.