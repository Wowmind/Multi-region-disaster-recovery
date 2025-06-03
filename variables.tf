variable "primary_region" {
  default = "us-east-1"
}

variable "replica_region" {
  default = "us-west-2"
}

variable "bucket_name" {
  description = "Base bucket name"
  default     = "my-staticc-site"
}
