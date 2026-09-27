# 08 - VM com Modulos

Refatoração da infraestrutura para módulos locais reutilizáveis.

## Estrutura

- `modules.tf`: chamada dos módulos `network` e `vm`.
- `network/`: VPC, subnet, security group e outputs.
- `vm/`: instância EC2 e saídas.
- `provider.tf` e `locals.tf`: configuração compartilhada.

## Beneficio

Separação de responsabilidades e melhor reaproveitamento de código.