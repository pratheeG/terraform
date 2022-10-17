# Terraform Settings Block

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = data.aws_ami.ec2.id
  instance_type = var.aws_ec2_type
  # instance_type = var.aws_ec2_type_list[count.index]
  key_name = var.ec2_key_pair_name
  count = var.aws_ec2_instance_count
  tags = {
    Name = "Prem Test - ${count.index}"
  }
  vpc_security_group_ids = [ aws_security_group.this_ec2.id ]
  user_data              = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Welcome to StackSimplify ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
    EOF  
}
