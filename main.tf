resource "aws_instance" "Server1" {
  ami           = var.ami-name
  instance_type = var.instance-type-name
  //security_groups = ["web"]
  security_groups = [aws_security_group.sg.name]
  key_name        = "resume-key"
  tags = {
    Name = "Server1"
    Team = "DevOps"
    env  = "Dev"
  }
  user_data = file("install.sh")
}

/*
resource "aws_ebs_volume" "volume_1" {
  availability_zone = aws_instance.Server1.availability_zone
  size              = 40

  tags = {
    Name       = "Terraform volume"
    Team       = "Cloud"
    Created-by = "Terraform"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.volume_1.id
  instance_id = aws_instance.Server1.id
}
*/