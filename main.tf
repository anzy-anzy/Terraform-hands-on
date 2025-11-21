resource "aws_vpc" "homework" {
  cidr_block = var.vpc_cidr

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = { Name = "${var.project_name}-vpc" }
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

locals {
  default_subnet_id = data.aws_subnets.default.ids[0]
}

resource "aws_security_group" "linux_sg" {
  name   = "${var.project_name}-sg"
  vpc_id = data.aws_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "linux2" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = local.default_subnet_id

  vpc_security_group_ids = [aws_security_group.linux_sg.id]
  associate_public_ip_address = true

  key_name = var.key_name != "" ? var.key_name : null

  tags = { Name = "${var.project_name}-linux2" }
}
