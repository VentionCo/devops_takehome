module "vpc" {
  source = "../module/vpc"

  project_name = var.project_name
  region       = var.region
  vpc_cidr     = var.vpc_cidr
  tags         = var.tags
}

module "ecr" {
  source = "../module/ecr"

  project_name = var.project_name
  environment  = var.environment
  tags         = var.tags
}

module "vention" {
  source = "../module/vention"

  members      = var.members
  tags         = var.tags
}