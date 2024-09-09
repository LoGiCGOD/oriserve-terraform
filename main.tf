module "vpc" {
  source       = "./modules/vpc"
  vpc_cidr     = var.vpc_cidr
  subnet_cidr  = var.subnet_cidr
  subnet_names = var.subnet_names
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "asg" {
  source        = "./modules/asg"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_ids    = module.vpc.subnet_ids
  sg_id         = module.sg.sg_id
}
