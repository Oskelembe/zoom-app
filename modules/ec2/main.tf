provider "aws" {
  region = "us-east-1" # Change this to your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Specify the desired Amazon Machine Image (AMI)
  instance_type = "t2.micro"              # Specify the instance type

  tags = {
    Name = "example-instance"
  }
}
