# 09.03 - `provider`

Exemplo completo de `provider` e aliases seguindo a base do módulo 01.

## O que este modulo cria

- Uma VPC + 3 subnets em `us-east-1`.
- Uma VPC + 3 subnets em `sa-east-1`.

## Arquivos

- `main.tf`: providers com aliases `aws.us_east_1` e `aws.sa_east_1`.
- `locals.tf`: tags comuns.
- `network.tf`: recursos replicados por região.
- `outputs.tf`: IDs das subnets por região.