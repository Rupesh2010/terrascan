module "sg_default" {
  source = "./sg_default"
  sg_name = "sg-test"
  sg_description = "Security Group managed by Terraform"
  vpc_id = "vpc-26e8dc5c"
  
  ### Inbound rules ###
  inbound_rules = {
    "0" = [ "0.0.0.0/0", "5", "5", "TCP" ]
    "1" = [ "0.0.0.0/0", "443", "443", "TCP" ]
    "2" = [ "0.0.0.0/0", "1234", "4321", "UDP" ]
  }
  
  ### Outbound rules ###  
  outbound_rules = {
    "0" = [ "0.0.0.0/0", "0", "0", "-1" ]
  }

  ### Tags ###  
  tags = {
    Name = "${var.sg_name}"
    Project = "test"
  }
}
