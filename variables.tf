variable "region" {
    type = string
    default = "ap-southeast-2"
}

variable "profile" {
    type = string
    default = "aijazk2406-adminuser"
}

variable "project_name" {
    type = string
    default = "twotier"
}

variable "vpc_cidr" {
    type = string
}

variable "vpc_name" {
    type = string
}

variable "igw_name" {
    type = string
}

variable "pub_subnet_cidr_1" {
    type = string
}

variable "pub_subnet_cidr_2" {
    type = string
}

variable "pub_subnet1_az" {
    type = string
}

variable "pub_subnet2_az" {
    type = string
}

variable "private_subnet_cidr_1" {
    type = string
}

variable "private_subnet_cidr_2" {
    type = string
}

variable "private_subnet1_az" {
    type = string
}

variable "private_subnet2_az" {
    type = string
}

variable "pub_rt_name" {
    type = string
}

variable "db_subnet" {
    type = string
}

variable "db_username" {
    type = string
}

variable "db_password" {
    type = string
}

variable "sg_name" {
    type = string
}

variable "db_sg_name" {
    type = string
}

variable "lab_sg_name" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "elb_name" {
  type = string
}

variable "tg_name" {
  type = string
}