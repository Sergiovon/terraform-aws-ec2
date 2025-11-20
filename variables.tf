variable "region" {
  type = string
  description = "AWS region"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type"
}

variable "instance_name" {
  type = string
  description = "EC2 instance name"
}

output "web_server_count" {
  description = "Number of web servers provisioned"
  value       = length(module.ec2_instances.instance_ids)
}

