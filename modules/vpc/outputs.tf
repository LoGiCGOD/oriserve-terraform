output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "subnet_ids" {
  value = [for subnet in aws_subnet.subnets : subnet.id]
}
