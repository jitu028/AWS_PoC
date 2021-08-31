variable "aws_region" {
    default = "ap-southeast-1"
}

variable "vpc_cidr" {
  default = "192.168.0.0/16"
}
variable "public_cidrs" {
  default = ["192.168.1.0/24", "192.168.2.0/24"]
}
variable "private_cidrs" {
  default = ["192.168.11.0/24", "192.168.12.0/24", "192.168.21.0/24", "192.168.22.0/24", "192.168.31.0/24", "192.168.32.0/24"]
}
variable "public_sn_count" {
  default = 2
}

variable "availability_zone" {
  default = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1a", "ap-southeast-1b"]
}

variable "private_sn_count" {
  default = 6
}
variable "max_subnets" {
  default = 10
}
variable "access_ip" {}

variable "db_subnet_group" {
  default = true
}

variable "web_subnet" {
  default = ["192.168.11.0/24", "192.168.12.0/24"]
}

variable "app_subnet" {
  default = ["192.168.21.0/24", "192.168.22.0/24"]
}

variable "db_subnet" {
  default = ["192.168.31.0/24", "192.168.32.0/24"]
}