# 04 - Rede + Estado Remoto

Este diretório cria a base de rede (VPC, subnet e grupo de segurança) e salva o estado em backend remoto S3.

## Arquivos

- `main.tf`: provedor, backend e configuração principal.
- `network.tf`: recursos de rede.
- `outputs.tf`: saídas usadas por outros diretórios.
- `backend.hcl.example`: exemplo de configuração externa do backend.
- `backend.hcl`: configuração local (não versionar credenciais).

## Fluxo comum

```bash
terraform init -backend-config=backend.hcl
terraform plan
terraform apply
```

Se você alterou backend/chave/bucket:

```bash
terraform init -reconfigure -backend-config=backend.hcl
```

Para migrar estado entre backends:

```bash
terraform init -migrate-state -backend-config=backend.hcl
```


