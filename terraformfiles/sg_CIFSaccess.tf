terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "aws_security_group" "CIFS" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 3020
    to_port     = 3020
    protocol    = "tcp"
  }
}

