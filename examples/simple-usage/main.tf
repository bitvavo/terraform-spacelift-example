terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

module "example_file" {
  source = "../../"

  file_name = "simple-example"
}

output "created_file_path" {
  description = "Path to the file created by the module"
  value       = module.example_file.file_path
}

output "created_file_content" {
  description = "Content of the file created by the module"
  value       = module.example_file.file_content
}
