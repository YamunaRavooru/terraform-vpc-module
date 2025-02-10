variable cidr_block{

}
variable enable_dns_support{
    default= true
}
variable project{

}
variable environment{

}
variable common_tags{
    type= map
    
}
variable vpc_tags{
    default={}
}
variable igw_tags{
    default={}
}
variable public_subnet_cidr{
    type= list

 validation {
    condition     = length(var.public_subnet_cidr) == 2
    error_message = "please provide 2 valid subnet CIDR"
  }

}
variable public_subnet_tags{
    default={}
}
variable private_subnet_cidr{
    validation {
    condition     = length(var.private_subnet_cidr) == 2
    error_message = "please provide 2 valid subnet CIDR"
  }
}
variable database_subnet_cidr{
    validation {
    condition     = length(var.database_subnet_cidr) == 2
    error_message = "please provide 2 valid subnet CIDR"
  }
} 
variable database_subnet_tags{
    default={}
}
variable private_subnet_tags{
    default={}
}
variable "nat_gatway_tags" {
  default     = {}
 
}
variable "database_route_table_tags" {
    default={}

}
variable "public_route_table_tags" {
    default={}

}
variable "private_route_table_tags" {
    default={}

}
variable "is_peering_required"{
    default= false
}
variable "vpc_peering_tags"{
    default={}
}
