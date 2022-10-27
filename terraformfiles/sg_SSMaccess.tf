terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "aws_security_group" "SSM" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 4505
    to_port     = 4505
    protocol    = "tcp"
  }
}
