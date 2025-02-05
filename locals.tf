locals  {
        resource_name ="${var.project}-${var.environment}"
        az_names =slice(data.aws_availability_zones.example.names, 0, 2)
}