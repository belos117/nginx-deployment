#-----------------
#General Variables
#-----------------

variable "aws_region" {
  description = "region"
  type        = string
  default     = "eu-west-2"
}

#------------------
#Key Pair Variables
#------------------
variable "key_pair_name" {
  description = "Key Pair for ssh access to instance"
  type        = string
  default     = "mykey"
}

variable "file_name" {
  description = "Name of the key pair file"
  type        = string
  default     = "mykey"
}

#------------------
#Instance Variables
#------------------
variable "instance_type" {
  description = "Instance Type"
  type        = string
  default     = "t2.micro"
}
variable "instance_tag" {
  description = "Tag(s) for Instance(s)"
  type        = list(string)
  default     = ["myserver"]
}
variable "ec2_instance_name" {
  type        = string
  description = "The name to give the instance."
  default     = "myserver"
}

variable "counter" {
  description = "Number of instances to launch"
  type        = number
  default     = 1
}

#----------------
#Subnet Variables
#----------------
variable "cidr_block" {
  description = "CIDR Block"
  type        = string
  default     = "10.10.0.0/16"
}

