terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "example_file" {
  content  = "Hello from Terraform module!\nFile created: ${timestamp()}\nFile name: ${var.file_name}"
  filename = "${path.module}/${var.file_name}.txt"
}
