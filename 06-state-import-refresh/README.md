# 06 - Comandos de Estado, Importacao e Atualizacao

Diretório para praticar inspeção e manutenção do estado.

## `terraform show`

- `terraform show plan.tfplan`
- `terraform show -json plan.tfplan`
- `terraform show`
- `terraform show -json`

## `terraform state`

- `terraform state list`
- `terraform state show <resource>`
- `terraform state pull`
- `terraform state pull > state.json`
- `terraform state mv <source> <destination>`
- `terraform state rm <resource>`
- `terraform state replace-provider <old-provider> <new-provider>`
- `terraform state push <state-file>` (usar com cuidado)

## `terraform import`

- `terraform import <resource> <id>`

## `terraform refresh`

- `terraform refresh`

Observacao: em Terraform moderno, `plan` e `apply` normalmente já detectam drift, mas `refresh` continua útil para estudo e casos pontuais.