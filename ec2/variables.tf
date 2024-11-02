
variable "ami_id" {
    description = "AMI ID for the EC2 isntance"
    type = string
    default = "ami-08eb150f611ca277f"
  
}

variable "instance_type" {
    description = "Instance type for the EC2 instance"
    type = string
    default = "t3.micro"
  
}

variable "subnet_id" {
    description = "The ID of the subnet to launch the instance"
    type = string
}

variable "securitygroup_id" {
    description = "The ID of the security group to associate with the instance "
  
}