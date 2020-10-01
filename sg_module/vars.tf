variable "vpc_id" {}
variable "sg_name" {}

variable "sg_description" {
  default = "Security Group managed by Terraform"
}

variable "inbound_rules" {}

variable "outbound_rules" {}

variable "cidr_blocks" {}

variable "tags" {
  type = "map"
}
