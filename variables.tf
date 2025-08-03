variable "common_tags" {
  default = {
    Project = "expense"
    Environment = "dev"
    Terraform = "true"
  }
}

variable "vpc_tags" {
  default = {
    Purpose = "assignment"
  }
}