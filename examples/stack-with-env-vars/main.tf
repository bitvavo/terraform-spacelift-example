terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

module "main_file" {
  source = "../../"

  file_name = "main-file-${var.file_suffix}"
}

resource "local_file" "config_file" {
  content  = "Configuration settings:\nENV: ${var.environment}\nVERSION: ${var.app_version}"
  filename = "${path.module}/config-${var.file_suffix}.txt"
}

resource "local_file" "secrets_file" {
  content  = "Secret configuration:\nAPI_KEY: secret-api-key\nDB_PASSWORD: super-secret-password"
  filename = "${path.module}/secrets-${var.file_suffix}.txt"
}

output "main_file_path" {
  description = "Path to the main file created by the module"
  value       = module.main_file.file_path
}

output "all_created_files" {
  description = "List of all created files"
  value = [
    module.main_file.file_path,
    local_file.config_file.filename,
    local_file.secrets_file.filename
  ]
}
