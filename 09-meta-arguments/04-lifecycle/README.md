# 09.04 - `lifecycle`

Exemplo simples de `lifecycle` usando buckets S3.

## O que este modulo cria

- 1 bucket com `create_before_destroy`.
- 1 bucket com `prevent_destroy`.

## Arquivos

- `main.tf`: provider e backend remoto.
- `locals.tf`: tags compartilhadas.
- `bucket.tf`: recursos S3 com blocos `lifecycle`.
- `outputs.tf`: nomes dos buckets criados.