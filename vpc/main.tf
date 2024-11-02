#1 vpc, 1 subnet and  1 securitygroup

resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true
    enable_dns_support = true

    tags = {
      Name = "myvpc"
    }
}


resource "aws_subnet" "mysubnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.subnet_cidr
    map_public_ip_on_launch = true

    tags = {
      Name = "mysubnet"
    }
}

resource "aws_security_group" "mysecuritygroup" {
    vpc_id = aws_vpc.myvpc.id
    name = "mysecuritygroup"
    description = "public security"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}