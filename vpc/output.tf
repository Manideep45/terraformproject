output "vpc_id" {
    value = aws_vpc.myvpc.id
  
}

output "subnet_id" {
    value = aws_subnet.mysubnet.id
  
}

output "securitygroup_id" {
    value = aws_security_group.mysecuritygroup.id

}