module "vpc" {
  source = "./vpc"
}

module "ec2" {
  source            = "./web"
  subnet_id         = module.vpc.pb_sn
  security_group_id = module.vpc.sg
}