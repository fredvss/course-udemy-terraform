# Curso de Terraform (AWS)

Repositório organizado por etapas, com exemplos progressivos de Terraform.

## Estrutura

- `01-terraform-blocks`: blocos fundamentais do Terraform (`terraform`, `provider`, `resource`, `module`, `output`, etc.).
- `02-basic-functions`: funções e geração de nomes para recursos simples.
- `03-bucket-local-state-to-remote-state`: bucket para estado remoto e primeiros outputs.
- `04-network-remote-state`: rede (VPC/subnet/SG) com backend remoto.
- `05-vm-remote-state`: VM usando `terraform_remote_state` da rede.
- `06-state-import-refresh`: comandos de inspeção/manipulação de state e import.
- `07-import-moved-removed`: uso de `import`, `moved` e `removed`.
- `08-vm-modules`: refatoração para módulos (`network` e `vm`).
- `09-meta-arguments`: exemplos de meta-argumentos (`depends_on`, `count`, `for_each`, `provider`, `lifecycle`).
- `10-functions-expressions`: exemplos de expressões (`conditionals`, `for`, `splat`, `dynamic`) e funções internas.

## Comandos úteis

```bash
terraform init -backend-config=backend.hcl
terraform init -reconfigure -backend-config=backend.hcl
terraform init -migrate-state -backend-config=backend.hcl
terraform plan
terraform apply
```

Para acesso SSH em exemplos de VM:

```bash
ssh -i aws-key.pem <user>@<public-ip-address>
```

## Observações

- Alguns diretórios possuem arquivos de state local apenas para estudo.
- Ajuste `profile`, `bucket`, `key` e `region` conforme sua conta AWS.