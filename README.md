terraform init -backend-config=backend.hcl

terraform init -reconfigure -backend-config=backend.hcl

ssh -i aws-key.pem <user>@<public-ip-address>