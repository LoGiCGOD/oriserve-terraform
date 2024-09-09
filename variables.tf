variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "The name of the VPC"
  default     = "my-modular-vpc"
}

variable "subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = ["10.0.1.0/24"]
}

variable "subnet_names" {
  description = "List of subnet names"
  type        = list(string)
  default     = ["PublicSubnet1"]
}


variable "instance_type" {
  description = "The type of instance to launch"
  default     = "t2.medium"
}

variable "ami_id" {
  description = "AMI ID to launch the EC2 instance"
  default     = "ami-053f2979ba3826edf"
}
