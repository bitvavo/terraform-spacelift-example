terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
  }
}

resource "spacelift_webhook" "simple-webhook-4" {
  stack_id = "iac-sandbox-envs-lab"

  endpoint = "https://example.com/example_webhook"
  secret   = "my_secret"
}
