variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "environment" {
  
}

variable "project" {
  default = "expense"
}

variable "instances" { 
    default = ["mysql", "backend", "frontend"]
}

variable "ami" {
    default = "ami-0220d79f3f480ecf5"
    type = string
}


variable "zone_id" {
  default = "Z00951673I2OYCZYMUOPO"
}

variable "domain_name" {
    default = "manojmantha.online"
}