module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnets_cidr = var.subnets_cidr
}

module "sg" {
  depends_on = [ module.vpc ]
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  depends_on = [ module.vpc ]
  source = "./modules/ec2"
  sg_id = module.sg.sg_id
  subnets = module.vpc.subnets_ids
}

module "alb" {
  depends_on = [ module.vpc ]
  source = "./modules/alb"
  sg_id = module.sg.sg_id
  subnets = module.vpc.subnets_ids
  vpc_id = module.vpc.vpc_id
  instances = module.ec2.instances
}