#1 ec2 instance

resource "aws_instance" "myec2" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    security_groups = [var.securitygroup_id]

    tags = {
        Name = "myec2"
    }
  
}