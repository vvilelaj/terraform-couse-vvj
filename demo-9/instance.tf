resource "aws_instance" "example" {
  ami                    = lookup(var.AMIS, var.AWS_REGION)
  instance_type          = "t2.micro"
  
  subnet_id              = aws_subnet.main-public-1.id
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
  key_name               = aws_key_pair.mykey.key_name
}

resource "aws_ebs_volume" "ebs-volume-1" {
  availability_zone = "us-east-1"
  size = 20
  type = "gp2"
  tags = {
    Name = "extra volume data"
  }
}

resource "aws_volume_attachment" "ebs-volume-1-volume-attachment" {
  device_name = "dev/xvhd"
  volume_id = aws_ebs_volume.ebs-volume-1.id
  instance_id = aws_instance.example.id
}