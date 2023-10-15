provider "aws" {
  region = "us-east-1" # Set your desired AWS region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "your-unique-bucket-name" # Replace with your desired bucket name
  acl    = "private" # Set the access control list (ACL) for the bucket (e.g., private, public-read, public-read-write)
  
  # Enable versioning (optional)
  versioning {
    enabled = false # Set to true to enable versioning
  }
}

