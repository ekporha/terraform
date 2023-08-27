Writing a resource to create an EC2 instance and printing the “instance_state” using output

resource "aws_instance" "inst-sg" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
}


resource "aws_instance" "ec2-01" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
}


resource "aws_instance" "ec2-05" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
}

output "instance_state_ec2-01" {
 value = aws_instance.ec2-01.instance_state
}

output "public-ip_ec2-01" {
 value = aws_instance.ec2-01.public_ip
}

output "public-dns_ec2-01" {
 value = aws_instance.ec2-01.public_dns
}

output "instance_state_ec2-05" {
 value = aws_instance.ec2-05.instance_state
}

output "public-ip_ec2-05" {
 value = aws_instance.ec2-05.public_ip
}

output "public-dns_ec2-05" {
 value = aws_instance.ec2-05.public_dns
}
