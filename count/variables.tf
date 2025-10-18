variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
    default = "Z0067341ETVXQSPZ5LU5"
}

variable "domain_name" {
    default = "rajutech.shop"
}