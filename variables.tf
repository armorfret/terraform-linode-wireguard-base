variable "name" {
  type        = "string"
  description = "The human-readable name for the server. Used when naming the Linode (with a suffix of '-wg')"
}

variable "ssh_keys" {
  type        = "list"
  description = "SSH public keys used to log in as root to the server"
  default     = []
}

variable "ssh_users" {
  type        = "list"
  description = "List of authorized users (Linode usernames, must have keys already assigned via Linode API)"
  default     = []
}

variable "region" {
  type        = "string"
  default     = "us-central"
  description = "Region to place the Linode in"
}

variable "type" {
  type        = "string"
  default     = "g6-standard-2"
  description = "Plan type for the Linode"
}

variable "source_image_id" {
  type        = "string"
  default     = "linode/ubuntu18.04"
  description = "Source image to build on"
}

variable "ansible_repo_path" {
  type        = "string"
  description = "Path to deploy-wireguard-server repo"
}
