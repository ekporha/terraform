Creating 10 resources using single resource block declaration.

resource "aws_instance" "exercise" {
  instance_type = "t2.micro"
  ami           = "ami-053b0d53c279acc90"
  count = 10
  tags = {
    Name = "exercise-${count.index}"
  }
}

