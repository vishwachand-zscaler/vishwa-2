terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "aws_security_group" "ES" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 9300
    to_port     = 9300
    protocol    = "tcp"
  }
}
