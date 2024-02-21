resource "aws_security_group" "sg" {
  description = "Allow HTTP, SSH inbound traffic"
  vpc_id = var.vpc_id

  tags = {
    Name = "MySecurityGroup"
  }
}

resource "aws_security_group_rule" "sg_rules" {
  count             = length(var.sg_rules)
  type              = var.sg_rules.type
  from_port         = var.sg_rules.from_port
  to_port           = var.sg_rules.to_port
  protocol          = var.sg_rules.protocol
  cidr_blocks       = var.sg_rules.cidr_blocks
  security_group_id = aws_security_group.sg.id
}