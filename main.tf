

module "vpc" {
    source = "./vpc"

}


module "ec2" {
    source = "./ec2"
    securitygroup_id = module.vpc.securitygroup_id
    subnet_id = module.vpc.subnet_id


}
