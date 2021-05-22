
resource "aci_access_generic" "example" {
  attachable_access_entity_profile_dn   = "${aci_attachable_access_entity_profile.example.id}"
  name                                  = "example"
  annotation                            = "example"
  name_alias                            = "example"
}

variable "vpc_id" {}

data "aws_vpc" "selected" {
  id = var.vpc_id
}

resource "aws_subnet" "example" {
  vpc_id            = data.aws_vpc.selected.id
  availability_zone = "us-west-2a"
  cidr_block        = cidrsubnet(data.aws_vpc.selected.cidr_block, 4, 1)
}