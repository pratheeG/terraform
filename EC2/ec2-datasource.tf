data "aws_ami" "ec2" {
  most_recent = true

  filter {
    name  = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

}
