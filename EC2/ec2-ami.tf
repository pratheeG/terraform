resource "aws_ami_from_instance" "this_custom_image" {
    count = var.aws_ec2_instance_count
    name = "AMI-${var.ec2_ami_name}"
    source_instance_id = aws_instance.ec2demo[count.index].id
}