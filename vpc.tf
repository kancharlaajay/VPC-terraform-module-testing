module "vpc" {
  source = "../VPC-terraform-module"
  project = "expense"
  environment = "dev"
  vpc_cidr = "192.0.0.0/16"
  common_tags= var.common_tags
  vpc_tags = var.vpc_tags
  
  igw_tags = {
    Purpose = "assignmnet"
  }
  
  public_subnet_cidrs = ["192.0.1.0/24", "192.0.2.0/24"]
  
  public_subnet_tags = {
   Purpose = "assignment" 
  }
  
  private_subnet_cidrs = ["192.0.11.0/24", "192.0.12.0/24"]
  
  private_subnet_tags = {
    Purpose = "assignment"
  }
  
  database_subnet_cidrs = ["192.0.21.0/24", "192.0.22.0/24"]
  
  database_subnet_tags = {
    Purpose = "assignment"
  }

  nat_gateway_tags = {
    Purpose = "assignment"
  }

  public_route_table_tags = {

  }

  private_route_table_tags = {

  }

  database_route_table_tags = {

  }

}





