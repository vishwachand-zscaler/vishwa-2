terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "aws_security_group" "LDAP" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 636
    to_port     = 636

    protocol    = "tcp" 
  }
}
