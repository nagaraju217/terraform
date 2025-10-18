
resource "aws_instance" "terraform" {
 ami = var.ami_id # Replace with your AMI ID
 instance_type = var.instance_type
 vpc_security_group_ids = [aws_security_group.allow-all.id]

 tags = var.tags
}


resource "aws_security_group" "allow-all" {
  name   = var.sg_name

  
  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
    
  }

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_from_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

}



