resource "aws_security_group" "roboshop_instyance" {
  name   =  "roboshop-dynamic-sg"
  dynamic "ingress" {
  for_each = toset(var.ingress_port)
  content {
    from_port        = ingress.value
    to_port          = ingress.value
    protocol         = "tcp" #"-1 "all ports
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
    
  }
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

   tags = {
    Name = "roboshop-strict-sg"
  }
}



