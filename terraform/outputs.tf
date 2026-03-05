output "sonarqube_ip"{
  value = aws_instance.sonarqube_server.public_ip
}

output "jfrog_ip"{
  value = aws_instance.jfrog_server.public_ip
}
