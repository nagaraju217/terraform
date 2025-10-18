resource "aws_route53_record" "roboshop" {
  count = 10
  zone_id = "var.zone_id"
  name    = "${var.instances[count.index]}.${var.domain_name}"     #  mongodb.rajutech.shop
  type    = "A"
  ttl     = 1
  records = [aws_instance.terraform[count.index].private_ip] 
}