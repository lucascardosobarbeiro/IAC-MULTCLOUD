# 🌐 Infraestrutura como Código Multicloud com Terraform

Este projeto demonstra como provisionar uma infraestrutura equivalente nas nuvens **AWS** e **GCP** usando **Terraform**, com foco em modularização, ambientes separados (dev/staging/prod), backend remoto e integração com CI/CD.

---

## 🧱 Estrutura do Projeto

```
iac-multicloud/
│
├── modules/                # Módulos reutilizáveis
│   ├── network/            # Criação de redes (VPC/Subnets)
│   └── instance/           # Criação de instâncias (EC2/GCE)
│
├── environments/
│   ├── dev/
│   │   ├── aws/
│   │   └── gcp/
│   ├── staging/
│   │   ├── aws/
│   │   └── gcp/
│   └── prod/
│       ├── aws/
│       └── gcp/
│
└── .github/
    └── workflows/          # CI/CD com GitHub Actions
```

---

## 🚀 Tecnologias Utilizadas

- [Terraform](https://www.terraform.io/)
- AWS (EC2, VPC, S3, DynamoDB)
- GCP (Compute Engine, VPC, GCS)
- GitHub Actions (CI/CD)
- Módulos reutilizáveis
- Backend remoto para controle de estado

---

## 🛠️ Como Usar

### Pré-requisitos

- Terraform 1.6+
- Conta na AWS e GCP configuradas via CLI (`aws configure`, `gcloud init`)
- Buckets para backend remoto já criados:
  - `lucas-iac-tfstate` no GCS
  - `lucas-iac-tfstate` no S3 + tabela DynamoDB `terraform-locks`

### Inicializar e aplicar (exemplo GCP dev):

```bash
cd environments/dev/gcp
terraform init
terraform apply -auto-approve
```

### Alternar entre ambientes e clouds:

```bash
# AWS staging
cd environments/staging/aws
terraform init
terraform apply -auto-approve
```

---

## ⚙️ Backend Remoto

Cada ambiente possui seu `backend.tf` apontando para:

- **GCP** → Bucket GCS (`lucas-iac-tfstate`)
- **AWS** → Bucket S3 + DynamoDB Locking

---

## 🔁 CI/CD

Fluxo GitHub Actions em `.github/workflows/terraform.yml`:

- Executa `terraform init`, `plan` e `apply` automaticamente no push para `main`
- Configurado inicialmente para `environments/dev/gcp`

---

## 🧩 Módulos Reutilizáveis

Os módulos estão em `modules/` e incluem:

- `network`: cria redes e subnets
- `instance`: provisiona instâncias EC2 (AWS) ou GCE (GCP)

---

## 📚 Aprendizado

Este projeto foi construído com foco educacional, cobrindo:

- Provisionamento multicloud
- Boas práticas de organização
- Separação de ambientes
- Uso de módulos
- Armazenamento remoto de estado
- CI/CD para automação

---

## 📄 Licença

MIT License
