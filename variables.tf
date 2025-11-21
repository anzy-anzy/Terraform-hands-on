variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "CIDR for the new VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "project_name" {
  description = "Resource prefix"
  type        = string
  default     = "terraform-hands-on"
}

variable "instance_ami" {
  description = "AMI for Amazon Linux 2"
  type        = string
  default     = "ami-0fa3fe0fa7920f68e"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Optional EC2 key pair"
  default     = ""
}
