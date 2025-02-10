data "aws_availability_zones" "example" {
 state = "available"
}

data "aws_vpc" "default" {
  default = true
}
data "aws_route_table" "main" {
 vpc_id = local.default_vpc_id
 filter {
   name = "association.main"
   values =["true"]
 }

}

