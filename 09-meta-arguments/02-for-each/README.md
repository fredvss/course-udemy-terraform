# 09.02 - `for_each`

Exemplo completo de `for_each` seguindo o padrão do módulo 01.

## O que este modulo cria

- 3 VPCs (`app`, `data`, `ops`) com `for_each`.
- 3 subnets, uma para cada VPC.
- 3 internet gateways, um por VPC (equivalente a um por "grupo" de subnet).

## Arquivos

- `main.tf`: provider e backend remoto.
- `locals.tf`: mapa `network_by_env` usado no `for_each`.
- `network.tf`: recursos com `for_each`.
- `outputs.tf`: mapas com IDs de subnets e IGWs.