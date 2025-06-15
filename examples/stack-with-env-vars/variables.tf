variable "file_suffix" {
  type        = string
  description = "Suffix to add to file names"
  default     = "example"
}

variable "environment" {
  type        = string
  description = "Environment name"
  default     = "development"
}

variable "app_version" {gstat
  type        = string
  description = "Version number"
  default     = "1.0.0"
}
