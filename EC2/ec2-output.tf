output "instance_public_ip" {
  description = "EC2 public Ip"
  value       = aws_instance.ec2demo[*].public_ip
}

output "elastic_ip" {
  description = "Elastic Ip"
  value       = aws_eip.ec2_elastic_ip[*].allocation_id
}

output "security_group" {
  description = "Security Group"
  value       = aws_security_group.this_ec2.id
}

output "for_output_list" {
  description = "For loop with list"
  value       = [for instance in aws_instance.ec2demo : instance.public_ip]
}


output "for_output_map" {
  description = "For loop with map"
  value       = { for instance in aws_instance.ec2demo : instance.id => instance.public_ip }
}

output "for_output_map_index" {
  description = "For loop with map with index"
  value       = { for c, instance in aws_instance.ec2demo : c => instance.public_ip }
}


output "legacy_splat_instance" {
  description = "Legacy Splat Operator"
  value = aws_instance.ec2demo.*.public_ip
}

output "latest_splat_instance" {
  description = "Latest Splat Operator"
  value = aws_instance.ec2demo[*].public_ip
}