# Input Variables

variable "aws_ec2_type" {
  description = "EC2 type"
  type        = string
  default     = "t2.micro"
}

variable "aws_ec2_instance_count" {
  description = "EC2 Instance Count to create"
  type        = number
  default     = 1
}

variable "ec2_ami" {
  description = "AMI in which AWS EC2 is created"
  type        = string
  default     = "ami-068257025f72f470d"
}

variable "ec2_ami_name" {
  description = "AMI name to create the image of the created instance"
  type       = string
  default    = "ec2-custom-ami"
}

variable "ec2_key_pair_name" {
  description = "Key pair assigned to instance"
  type       = string
  default    = "ec2_test_2"
}

variable "aws_ec2_type_list" {
  description = "EC2 type list"
  type = list(string)
  default = [ "t2.micro", "t2.medium" ]
}

variable "aws_ec2_type_map" {
  description = "EC2 type map"
  type = map(string)
  default = {
    "qa" = "t2.medium"
  }
}