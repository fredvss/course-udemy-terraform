# 05 - VM com Estado Remoto

Cria uma VM consumindo dados de rede a partir de `terraform_remote_state`.

## Arquivos

- `main.tf`: backend remoto e leitura de estado da rede.
- `vm.tf`: recursos de computação.
- `outputs.tf`: saídas da VM.
- `backend.hcl.example`: modelo para configuração de backend.

## Execucao

```bash
terraform init -backend-config=backend.hcl
terraform plan
terraform apply
```