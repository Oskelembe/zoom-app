provider "aws" {
  region = "us-east-1"  # Set your desired AWS region
}

resource "aws_dynamodb_table" "example_table" {
  name           = "ExampleTable"
  billing_mode   = "PROVISIONED"  # You can also use "PAY_PER_REQUEST" for on-demand billing
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "UserId"
  range_key      = "Timestamp"

  attribute {
    name = "UserId"
    type = "S"  # String data type
  }

  attribute {
    name = "Timestamp"
    type = "N"  # Number data type
  }

  ttl {
    attribute_name = "TimeToLive"
    enabled        = true
  }
}

