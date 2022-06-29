provider "spacelift" {}

terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
  }
}

resource "spacelift_context" "foo" {
  description = "Nice description"
  name        = "foo context"
}

resource "spacelift_policy" "no-weekend-deploys" {
  name = "Let's not deploy any changes over the weekend"
  body = "package rego \n deny { falase }"
  type = "TERRAFORM_PLAN"
}
