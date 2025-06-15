provider "spacelift" {}

variable "new_stack_name" {
  type = string
  description = "Description for the stack to create."
}

variable "new_stack_id" {
  type = string
  default = "iac-sandbox-envs-lab"
  description = "Description for the stack to create."
}
