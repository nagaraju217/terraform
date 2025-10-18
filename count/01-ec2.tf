resource "aws_instance" "terraform" {
 count = 10
 ami = "ami-09c813fb71547fc4f" # Replace with your AMI ID
 instance_type = "t3.micro"
 vpc_security_group_ids = [aws_security_group.allow-all.id]

 tags = {
   Name = var.instances[count.index]
   terraform = "true"

 }
}


resource "aws_security_group" "allow-all" {
  name   = "allow-all-sg"
  
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}