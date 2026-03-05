resource "aws_instance" "jfrog_server"{
  ami = "ami-0f58b397bc5c1f2e8"
  instance_type = var.instance_type
  
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.devops_sg.id]

  user_data = file("scripts/install-jfrog.sh")

  tags = {
    Name = "jfrog-artifactory"
}
