variable "bucket_name" {
  description = "Ma-help-Maama-name"
  type        = string
}

variable "force_destroy" {
  description = "Allow terraform destroy to delete"
  type        = bool
  default     = true
}

variable "tags" {
  type    = map(string)
  default = {}
}
