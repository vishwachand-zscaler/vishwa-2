terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "aws_security_group" "Oracle" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 1521
    to_port     = 1521
    protocol    = "tcp"
  }
}
