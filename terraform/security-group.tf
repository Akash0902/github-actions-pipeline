resource "aws_security_group" "devops_sg"{
  name = "devops-sg"
  vpc_id = aws_vpc.main_vpc.id

  ingress {
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
  from_port = 9000
  to_port = 9000
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
  from_port = 8081
  to_port = 8081
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
  from_port = 3000
  to_port = 3000
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  }
}
  
