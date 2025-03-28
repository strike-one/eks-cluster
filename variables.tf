variable "kubernetes_version" {
  default     = 1.27
  description = "Kubernetes version"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "Default CIDR range of the VPC"
}

variable "aws_region" {
  default     = "us-west-1"
  description = "AWS region"
}