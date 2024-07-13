output "public_ip" {
  value = aws_instance.Server1.public_ip
}

output "az" {
  value = aws_instance.Server1.availability_zone
}

output "ssh-connection" {
  //value = "ssh -i ~/Downloads/devops-ec2.pem ec2-user@${aws_instance.Server1.public_ip}"
  value = "ssh -i ${local_file.ssh_key.filename} ec2-user@${aws_instance.Server1.public_ip}"
}

output "dns"{
  value = aws_route53_record.rc1.name
}