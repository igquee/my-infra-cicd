# main.tf
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

# สร้างไฟล์ทดสอบเพื่อจำลองการ provisioning ทรัพยากร
resource "local_file" "demo" {
  filename = "${path.module}/hello.txt"
  content  = "Infra CI/CD via GitHub Actions Success!"
}