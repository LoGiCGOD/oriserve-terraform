output "asg_id" {
  value = aws_autoscaling_group.asg.id
}

output "lt_id" {
  value = aws_launch_template.lt.id
}
