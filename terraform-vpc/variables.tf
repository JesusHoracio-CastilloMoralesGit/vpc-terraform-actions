variable "vpc_cidr" {
  description = "VPC CIDR Range"
  type = string
}

variable "subnets_cidr" {
  description = "Subnet CIDR Range"
  type = list(string)
}

variable "sg_rules" {
  type = any
}
