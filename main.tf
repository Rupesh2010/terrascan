module "sg_default" {
  source = "./sg_module"
  sg_name = "test"
  sg_description = "Security Group managed by Terraform"
  vpc_id = "vpc-26e8dc5c"
  inbound_rules = "80"
  outbound_rules = "80"
  cidr_blockd = "0.0.0.0/0"
  tags = {
    Name = "test"
    Project = "test"
  }
}
