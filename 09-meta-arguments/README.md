# 09 - Meta-argumentos

Coleção de exemplos focada em meta-argumentos do Terraform.

## Estrutura

- `01-depends-on-count`: exemplos com `depends_on` e `count`.
- `02-for-each`: reservado para exemplos com `for_each`.
- `03-provider`: reservado para exemplos de `provider` em recursos e módulos.
- `04-lifecycle`: reservado para exemplos com `lifecycle`.

## Resumo rapido

- `depends_on`: força ordem explícita quando a dependência não é inferida.
- `count`: cria N instâncias indexadas (`count.index`).
- `for_each`: cria instâncias por chave (map/set), ideal para identidade estável.
- `provider`: seleciona provider e alias específico por recurso e módulo.
- `lifecycle`: ajusta comportamento de atualização e destruição.