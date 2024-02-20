variable "vpc_cidr" {
  description = "VPC CIDR Range"
  type = string
}

variable "subnets_cidr" {
  description = "Subnet CIDR Range"
  type = list(string)
}

variable "subnets_names" {
  description = "Subnet Names"
  type = list(string)
  default = [ "PublicSubnet1", "PublicSubnet2" ]
}