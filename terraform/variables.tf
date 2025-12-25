variable "my_ip" {
  description = "Your IP for SSH access"
  type = string
}

variable "ubuntu_24_04_ami" {
  type = string
  default = "ami-0ecb62995f68bb549"
}
