# 09.01 - `depends_on` e `count`

Exemplo prático de meta-argumentos para controlar ordem e quantidade de recursos.

## Arquivos

- `network.tf`: cria VPC e subnets com `count = 3`.
- `main.tf`: configuração de provider e backend.

## Pontos de estudo

- `count.index` para gerar CIDRs dinâmicos.
- `depends_on` para dependência explícita (quando necessário).