# TechFood DB

Este projeto utiliza Terraform para provisionar e gerenciar infraestrutura na AWS, especificamente uma instância de banco de dados PostgreSQL. A integração contínua e o deploy são automatizados através do GitHub Actions.

## Índice

- [Visão Geral](#visão-geral)
- [Pré-requisitos](#pré-requisitos)
- [Configuração](#configuração)
- [Uso](#uso)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Contribuição](#contribuição)
- [Licença](#licença)

## Visão Geral

O **TechFood** tem como objetivo facilitar o provisionamento de uma instância PostgreSQL na AWS utilizando Terraform. Com este projeto, você pode:

- Automatizar o deploy da infraestrutura com GitHub Actions.
- Gerenciar a configuração da instância de banco de dados de forma declarativa.
- Garantir consistência e reprodutibilidade no ambiente de desenvolvimento e produção.

## Pré-requisitos

Antes de começar, certifique-se de ter as seguintes ferramentas instaladas:

- [Terraform 1.7.4](https://www.terraform.io/downloads)
- [Git](https://git-scm.com/downloads)
- Conta na [AWS](https://aws.amazon.com/)

## Configuração

1. **Clone o repositório:**

   ```bash
   git clone https://github.com/seu-usuario/techfood.git
   cd techfood
   ```

2. **Configure as credenciais da AWS:**

   Crie um arquivo de variáveis ou utilize os [Secrets do GitHub](https://docs.github.com/pt/actions/security-guides/encrypted-secrets) para armazenar suas credenciais de forma segura.

   ```bash
   export AWS_ACCESS_KEY_ID=seu_access_key_id
   export AWS_SECRET_ACCESS_KEY=seu_secret_access_key
   export AWS_REGION=us-east-1
   ```

3. **Inicialize o Terraform:**

   Crie um arquivo chamado terraform.tfvars com suas configurações no formato abaixo.

   ```tf
    aws_region             = "aws_region"
    db_name                = "db_name"
    db_username            = "db_username"
    db_password            = "db_password"
    db_subnet_ids          = ["subnet-XXXXXX", "subnet-XXXX", "subnet-XXXXX", "subnet-XXXX", "subnet-XXXXXX"]
    vpc_security_group_ids = ["sg-XXXXXX", "sg-XXXXXXX", "sg-XXXXXXX"]
   ```

4. **Inicialize o Terraform:**

   ```bash
   terraform init
   ```

5. **Valide a configuração:**

   ```bash
   terraform validate
   ```

## Uso

Para aplicar a infraestrutura definida, siga os passos abaixo:

1. **Planeje as mudanças:**

   ```bash
   terraform plan -out=tfplan
   ```

2. **Aplique o plano:**

   ```bash
   terraform apply -auto-approve tfplan
   ```

O GitHub Actions está configurado para automatizar este processo sempre que houver um push para a branch `main` ou em pull requests direcionados a ela.
