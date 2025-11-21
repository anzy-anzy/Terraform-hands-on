output "homework_vpc_id" {
  value = aws_vpc.homework.id
}

output "linux2_instance_public_ip" {
  value = aws_instance.linux2.public_ip
}

output "ssh_command" {
  value = "ssh -i <your-key.pem> ec2-user@${aws_instance.linux2.public_ip}"
}

