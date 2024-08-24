variable "ami_image" {
  description = "AWS ami image"
  type        = string
  default     = "ami-07c1b39b7b3d2525d"
}

variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {
  description = "server tag"
  type        = string
  default     = "json-server"
}