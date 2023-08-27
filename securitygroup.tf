Creating an EC2 instance and associating the security group with it. Using argument as: security_groups = [aws_security_group.sg-01.name]
resource "aws_instance" "inst-sg" {
  instance_type = "t2.micro"
  ami           = "ami-053b0d53c279acc90"
  tags = {
    Name = "sg-instance"
  }
  security_groups = [aws_security_group.sg-01.name]
  key_name = aws_key_pair.labkey.key_name
}

resource "aws_key_pair" "labkey" {
  key_name = "My-Test-key"
  public_key = file("/home/labsuser/.ssh/id_rsa1.pub")
}

resource "aws_security_group" "sg-01" {
  name        = "my-sg"
  description = "Allow ALL traffic"
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "my-sg"
  }
}


