resource "aws_route53_record" "rc1" {
  zone_id = "Z04726547GQZFK0LG2A"
  type = "A"
  ttl = 300
  name = "resumee.polypersonnal.pro"
  records = [ aws_instance.Server1.public_ip ]
}