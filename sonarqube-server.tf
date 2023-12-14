resource "aws_instance" "sonarqube-instance" {
  ami                    = var.instance-ami
  instance_type          = var.instance-type
  availability_zone      = var.availablity-zone
  subnet_id              = var.subnet-id
  key_name               = var.key-name
  vpc_security_group_ids = [aws_security_group.sonarqube_security_group.id]
  user_data              = file("user-data-docker.sh")

  tags = {
    Name = "sonarqube"
  }
}

#Provisioner to install Docker and pull SonarQube image
# resource "null_resource" "sonarqube_provisioner" {
#   depends_on = [aws_instance.sonarqube-instance]

# provisioner "remote-exec" {
#   inline = [
#     "sudo apt update -y",
#     "sudo apt install apt-transport-https ca-certificates curl software-properties-common",
#     "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg",
#     "echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable' || sudo tee /etc/apt/sources.list.d/docker.list > /dev/null",
#     "sudo apt install docker-ce docker-ce-cli containerd.io",
#     "sudo docker pull sonarsource/sonar-scanner-cli:latest",
#   ]

#   connection {
#     type        = "ssh"
#     user        = "ubuntu"
#     # private_key = file("../downloads/waverlite-new-instance-key.pem")
#     host        = aws_instance.sonarqube-instance.public_ip

#   }
# }
#}
# }








