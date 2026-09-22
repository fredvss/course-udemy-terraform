terraform {
	# Define a configuracao do proprio Terraform, como versao minima e provedores.
	required_version = ">= 1.5.0"

	# Declara os provedores que este modulo pode usar.
	required_providers {
		aws = {
			source  = "hashicorp/aws"
			version = "6.65.0"
		}
	}
}

provider "aws" {
	# Configura um provedor para recursos e data sources.
	region = "us-east-1"
}

locals {
	# Guarda valores reutilizaveis dentro do modulo.
	environment = "dev"
}

variable "bucket_name" {
	# Define uma entrada configuravel para o modulo.
	type        = string
	description = "Nome do bucket S3."
}

data "aws_caller_identity" "current" {
	# Lemos informacoes existentes sem criar nada.
}

resource "aws_s3_bucket" "bucket" {
	# Cria e gerencia um recurso no provider.
	bucket = var.bucket_name
}

module "network" {
	# Reutiliza um modulo externo ou local.
	source = "./modules/network"
}

output "bucket_id" {
	# Exibe um valor depois do apply.
	value       = aws_s3_bucket.bucket.id
	description = "ID do bucket criado."
}

import {
	# Importa um recurso existente para o state sem recria-lo.
	to = aws_s3_bucket.bucket
	id = "my-existing-bucket"
}

moved {
	# Registra o remapeamento de um endereco antigo para um novo.
	from = aws_s3_bucket.old_bucket
	to   = aws_s3_bucket.bucket
}

removed {
	# Documenta a remocao intencional de um recurso do state.
	from = aws_s3_bucket.legacy_bucket
}

check "bucket_name_not_empty" {
	# Faz uma validacao declarativa de condicao.
	assert {
		condition     = length(var.bucket_name) > 0
		error_message = "bucket_name nao pode ficar vazio."
	}
}