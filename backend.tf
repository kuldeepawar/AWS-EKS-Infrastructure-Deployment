terraform {
  backend "s3" {
    bucket = "my-tf-test-bucket-sudeep-20250316"   # <-- your actual bucket
    key    = "env/terraform.tfstate"
    region = "eu-central-1"                        # <-- Frankfurt (EU)
  }
}

