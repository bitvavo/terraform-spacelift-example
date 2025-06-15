# Terraform Local File Example Module

This repository provides a simple Terraform module that creates local files without requiring any external authentication or services.

## Features

- Creates local text files with configurable names
- Includes timestamp and custom content
- No authentication required
- Perfect for testing and examples

## Usage

```hcl
module "example_file" {
  source = "path/to/this/module"
  
  file_name = "my-example-file"
}
```

## Examples

See the `examples/` directory for usage examples:
- `simple-usage/` - Basic file creation
- `stack-with-env-vars/` - Multiple files with configuration
