resource "aws_instance" "instance_1" {
  ami             = var.ami
  instance_type   = var.instance_type
  security_groups = [aws_security_group.instances.name]
  tags = {
    Name = "EC2 Node1"
  }
  key_name = "terraform-keypair"
  user_data       = <<-EOF
              #!/bin/bash
              echo "Hello, World 1" > index.html
              python3 -m http.server 8080 &
              EOF
}

resource "aws_instance" "instance_2" {
  ami             = var.ami
  instance_type   = var.instance_type
  security_groups = [aws_security_group.instances.name]
  tags = {
    Name = "EC2 Node2"
  }
  key_name = "terraform-keypair"
  user_data       = <<-EOF
              #!/bin/bash
              echo "Hello, World 2" > index.html
              python3 -m http.server 8080 &
              EOF
}

resource "aws_instance" "instance_3" {
  ami             = var.ami
  instance_type   = var.instance_type
  security_groups = [aws_security_group.instances.name]
  tags = {
    Name = "EC2 Master Node"
  }
  key_name = "terraform-keypair"
  user_data       = <<-EOF
              #!/bin/bash
              echo "Hello, World 3" > index.html
              python3 -m http.server 8080 &
              EOF
}