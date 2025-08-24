resource "aws_key_pair" "app_server_key" {
  key_name   = "${var.project_name}-key"
  public_key = file("~/.ssh/cloudlite_key.pub")
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["al2023-ami-*-kernel-6.1-x86_64"]
  }
}

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name      = "cloudlite-final-key"

  subnet_id                   = aws_subnet.public[0].id
  vpc_security_group_ids      = [aws_security_group.app_server.id]
  associate_public_ip_address = true

  iam_instance_profile = aws_iam_instance_profile.app_server_profile.name

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y docker
              systemctl start docker
              systemctl enable docker
              usermod -a -G docker ec2-user
              EOF

  tags = {
    Name = "${var.project_name}-server"
  }
}
