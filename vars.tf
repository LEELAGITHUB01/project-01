variable "instancetype" {
  type    = string
  default = "t2.small"
}

variable "instance_count" {
  type    = number
  default = "3"
}

variable "AWS_REGION" {
  type    = string
  default = "eu-west-2"
}

variable "AWS_PROFILE" {
  type    = string
  default = "training"
}

variable "environment" {
  type    = string
  default = "Development"
}

variable "servername" {
  description = "Names Of the EC2 Instances"
  type        = list(string)
  default     = ["k8smaster", "worker1", "worker2"]
}

variable "security_groupid" {
  description = "Names Of the Security Group"
  type        = list(string)
  default     = ["APP-Inbound-Rules"]
}