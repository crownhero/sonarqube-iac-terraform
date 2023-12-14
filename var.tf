variable "instance-ami" {
  type    = string
  default = "ami-0505148b3591e4c07"
}
variable "instance-type" {
  type    = string
  default = "t2.medium"
}
variable "availablity-zone" {
  type    = string
  default = "eu-west-2a"
}
variable "subnet-id" { #it is a public subnet
  type    = string
  default = "subnet-05a1e45d24cf68858"
}
variable "key-name" {
  type    = string
  default = "waverlite-new-instance"
}
variable "vpc-id" {
  type    = string
  default = "vpc-05fe93c754edc32a8"
}
variable "security-grp-name" {
  type    = string
  default = "sonarqube-security-group-prod"
}
variable "region" {
  type    = string
  default = "eu-west-2"
}

