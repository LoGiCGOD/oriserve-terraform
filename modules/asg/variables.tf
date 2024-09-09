variable "ami_id" {
  description = "AMI ID to launch the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs to use for the ASG"
  type        = list(string)
}

variable "sg_id" {
  description = "Security group ID for the ASG instances"
  type        = string
}
