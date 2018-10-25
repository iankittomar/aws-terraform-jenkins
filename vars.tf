# Terrafrom supports various types of variables
# String
# list
# map

variable "ami" {
  default = "ami-086a09d5b9fa35dc7"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "aws_region" {
  default = "eu-central-1"
}

variable "instance_count" {
  default = "1"
}

#variable "vpc_cidr" {

 # default = "190.160.0.0/16"
  
 # }
  
#variable "subnets_cidr" {

 #type = list
 #default = ["10.20.1.0/24","10.20.2.0/24"]
#}