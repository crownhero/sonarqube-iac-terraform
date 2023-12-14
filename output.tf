output "PublicIP" {
  value = aws_instance.sonarqube-instance.public_ip
}
