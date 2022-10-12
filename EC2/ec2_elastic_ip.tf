resource "aws_eip" "ec2_elastic_ip" {
  count = var.aws_ec2_instance_count
  instance = aws_instance.ec2demo[count.index].id
}

resource "aws_eip_association" "ec2_elastic_ip_association" {
  count = var.aws_ec2_instance_count
  instance_id   = aws_instance.ec2demo[count.index].id
  allocation_id = aws_eip.ec2_elastic_ip[count.index].allocation_id
}