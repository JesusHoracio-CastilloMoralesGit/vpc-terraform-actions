variable "vpc_id" {
  description = "VPC ID for Security Group"
  type = string
}

variable "sg_rules" {
  type = any
}
