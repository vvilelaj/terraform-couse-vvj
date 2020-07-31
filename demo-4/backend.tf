terraform {
    backend "s3" {
        bucket  = "demo-4-terraform-state"
        key     = "terraform/demo4"
    }
}