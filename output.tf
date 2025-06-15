output "file_path" {
  description = "Path to the created file"
  value       = local_file.example_file.filename
}

output "file_content" {
  description = "Content of the created file"
  value       = local_file.example_file.content
}
