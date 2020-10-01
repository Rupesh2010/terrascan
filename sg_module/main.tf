resource "aws_security_group" "default_sg" {
  name        = "${var.sg_name}"
  description = "${var.sg_description}"
  vpc_id      = "${var.vpc_id}"
  tags        = "${var.tags}"
}

resource "aws_security_group_rule" "ingress_rule" {
  description       = "TLS from VPC"
  type              = "ingress"
  cidr_blocks       = ["${var.cidr_blocks}"]
  from_port         = "${var.inbound_rule}"
  to_port           = "${var.outbound_rules}"
  protocol          = "tcp"
  security_group_id = "${aws_security_group.default_sg.id}"
}

resource "aws_security_group_rule" "egress_rule" {
  description       = "TLS from VPC"
  type              = "egress"
  cidr_blocks       = ["${var.cidr_blocks}"]
  from_port         = "${var.inbound_rule}"
  to_port           = "${var.outbound_rules}"
  protocol          = "tcp"
  security_group_id = "${aws_security_group.default_sg.id}"
} 
