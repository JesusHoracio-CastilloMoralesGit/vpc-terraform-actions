variable "vpc_id" {
  description = "VPC ID for Security Group"
  type = string
}

variable "sg_rules" {
  type = list(object({
    type         = string
    from_port    = number
    to_port      = number
    protocol     = string
    cidr_blocks  = list(string)
  }))
  default = {
  sg_rules = [
    {
        type = "ingress"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        type = "ingress"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        type              = "egress"
        from_port           = 0
        protocol          = "-1"
        to_port         = 65535
        cidr_blocks = ["0.0.0.0/0"]
    }
]
}
}