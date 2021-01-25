output "ip_address" {
  value = aws_instance.instance_terraform_bruneau.*.public_ip
}
