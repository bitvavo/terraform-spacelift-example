variable "file_name" {
  type        = string
  description = "Name of the file to create (without extension)"
  default     = "example"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC"
}
