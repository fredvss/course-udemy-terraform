# 07 - `import`, `moved` e `removed`

Este diretório demonstra como evoluir código Terraform sem destruir recursos existentes.

## Arquivos

- `import.tf`: importação declarativa (`import { ... }`).
- `moved.tf`: mapeia endereço antigo para novo (`moved { from ... to ... }`).
- `removed.tf`: remove recurso do estado de forma declarativa.

## Comandos úteis

```bash
terraform plan
terraform apply
```

Para gerar configuração base de recursos importados (quando aplicável):

```bash
terraform plan -generate-config-out="generated_resources.tf"
```