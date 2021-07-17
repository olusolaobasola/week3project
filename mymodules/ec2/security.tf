resource "aws_security_group" "ansible_secgrp" {
  name = "${var.name}"

  ingress {
    cidr_blocks =["0.0.0.0/0"]
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }

  # allow ingress of port 
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = var.httport
    to_port     = var.httport
    protocol    = "tcp"
  }

  # allow egress of all ports
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    name = "${var.name}"
  }
}