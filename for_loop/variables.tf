variable "instances" {

    #default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
    default = {
        mongodb = "t3.micro"
        redis= "t3.small"
        mysql = "t3.medium"
    }
}


variable "zone_id" {
    default = "Z0067341ETVXQSPZ5LU5"
}

variable "domain_name" {
    default = "rajutech.shop"
}