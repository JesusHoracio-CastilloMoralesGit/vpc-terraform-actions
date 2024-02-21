variable "vpc_cidr" {
  description = "VPC CIDR Range"
  type = string
}

variable "subnets_cidr" {
  description = "Subnet CIDR Range"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "subnets_names" {
  description = "Subnet Names"
  type = list(string)
  default = [ "PublicSubnet1", "PublicSubnet2" ]
}